function h = wls_lpf(N0,wp,ws,L,lambda)

N = (N0-1)/2 + 1;
pe = ceil(wp*(L-1));
se = floor(ws*(L-1));
W = [lambda*ones(1,pe+1) zeros(1,se-pe-1) ones(1,L-se)];
D = [ones(pe+1,1); zeros(L-pe-1,1)];

ctable = cos((0:L-1)*pi/(L-1));

phi0 = zeros(1,L);
g = zeros(1,N);
alpha = zeros(1,N-1);
beta = zeros(1,N);

beta(1) = sqrt(W*ones(L,1));
phi1 = ones(1,L)/beta(1);
omega = W.*phi1;

for i=1:N
g(i) = omega*D;

if (i==N)
  break;
endif

cpl = ctable.*phi1;

alpha(i) = (omega.*cpl)*ones(L,1);

tmp = phi1;
phi1 = cpl-alpha(i)*phi1-beta(i)*phi0;
phi0 = tmp;

beta(i+1) =sqrt((W.*phi1.*phi1)*ones(L,1));

phi1 = phi1/beta(i+1);

omega = W.*phi1;
end

h = calc_coe(N,g,alpha,beta);



