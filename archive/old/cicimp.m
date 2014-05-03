function imp = cicimp(over,stages)
% Program to calculate impulse response coefficients for CIC interpolation filter
imp = [1];
for ii=2:stages+1
	imp = conv(imp,ones(1,over));
end
