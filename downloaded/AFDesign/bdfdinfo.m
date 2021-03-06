function dr = bdfdinfo
% bdfdinfo.m  BUTTON: SHOW SHORT HELP
%   
%          Advanced Digital Filter Design - AFDesign
%   
%   Authors: Dejan V. Tosic, Miroslav D. Lutovac, 1999/02/21
%   tosic@galeb.etf.bg.ac.yu   http://www.rcub.bg.ac.yu/~tosicde/
%   lutovac@iritel.bg.ac.yu    http://galeb.etf.bg.ac.yu/~lutovac/
%   Copyright (c) 1999-2000 by Tosic & Lutovac
%   $Revision: 1.21 $  $Date: 2000/10/03 13:45$
%   
%   References:
%   Miroslav D. Lutovac, Dejan V. Tosic, Brian L. Evans
%        Filter Design for Signal Processing
%           Using MATLAB and Mathematica
%        Prentice Hall - ISBN 0-201-36130-2 
%         http://www.prenhall.com/lutovac
%
                         
% This file is part of AFDesign toolbox for MATLAB.
% Refer to the file LICENSE.TXT for full details.
%                        
% AFDesign version 2.1, Copyright (c) 1999-2000 D. Tosic and M. Lutovac
% This program is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation; see LICENSE.TXT for details.
%                       
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%                       
% You should have received a copy of the GNU General Public License
% along with this program; if not, write to the Free Software
% Foundation, Inc.,  59 Temple Place,  Suite 330,  Boston,
% MA  02111-1307  USA,  http://www.fsf.org/

clf
Nydx = 1;
matlabversion = version;
screensizedraw = get(0,'ScreenSize');
pdraw = get(gca,'Position');
if matlabversion(1)-'4' ==0 
  if screensizedraw(3) == 800
    FontInfo = 10;
  else
    FontInfo = 8;
  end
else
  FontInfo = 8;
end

%-----------------------------------------------------------------%

text(0.0,1.05*Nydx,...
'Advanced Digital Filter Design', 'FontWeight', 'bold','FontSize',FontInfo+1)

text(0.0,0.99*Nydx,...
'AFDesign version 2.1, Copyright (c) 1999-2000 D.Tosic and M.Lutovac', 'FontWeight', 'bold','FontSize',FontInfo)
text(0.0,0.94*Nydx,...
'This is free software; see LICENSE.TXT for details','FontSize',FontInfo-2)

set(gcf,'DefaultTextColor','b')

uicontrol('Style', 'text', 'String', 'Demo', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.0*pdraw(3)+pdraw(1) 0.85*pdraw(4)+pdraw(2) 0.10*pdraw(3) 0.045*pdraw(4)]);
text(0.12,0.87*Nydx,'load DEMO attenuation limits specification','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'Open', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.0*pdraw(3)+pdraw(1) 0.80*pdraw(4)+pdraw(2) 0.10*pdraw(3) 0.045*pdraw(4)]);
text(0.12,0.82*Nydx,'load USER attenuation limits specification','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'View', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.0*pdraw(3)+pdraw(1) 0.75*pdraw(4)+pdraw(2) 0.10*pdraw(3) 0.045*pdraw(4)]);
text(0.12,0.77*Nydx,'view CURRENT attenuation limits specification','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'Edit', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.0*pdraw(3)+pdraw(1) 0.70*pdraw(4)+pdraw(2) 0.10*pdraw(3) 0.045*pdraw(4)]);
text(0.12,0.72*Nydx,'edit CURRENT attenuation limits specification','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'Plot', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.0*pdraw(3)+pdraw(1) 0.63*pdraw(4)+pdraw(2) 0.10*pdraw(3) 0.045*pdraw(4)]);
text(0.12,0.65*Nydx,'plot attenuation versus frequency','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'Pass', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.0*pdraw(3)+pdraw(1) 0.58*pdraw(4)+pdraw(2) 0.10*pdraw(3) 0.045*pdraw(4)]);
text(0.12,0.6*Nydx,'plot attenuation versus frequency in passband','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'Tran', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.0*pdraw(3)+pdraw(1) 0.53*pdraw(4)+pdraw(2) 0.10*pdraw(3) 0.045*pdraw(4)]);
text(0.12,0.55*Nydx,'plot attenuation versus frequency in transition','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'Stop', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.0*pdraw(3)+pdraw(1) 0.48*pdraw(4)+pdraw(2) 0.10*pdraw(3) 0.045*pdraw(4)]);
text(0.12,0.5*Nydx,'plot attenuation versus frequency in stopband','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'Zoom', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.0*pdraw(3)+pdraw(1) 0.41*pdraw(4)+pdraw(2) 0.10*pdraw(3) 0.045*pdraw(4)]);
text(0.12,0.43*Nydx,'zoom attenuation characteristics','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'D1', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.0*pdraw(3)+pdraw(1) 0.34*pdraw(4)+pdraw(2) 0.05*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'D2', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.06*pdraw(3)+pdraw(1) 0.34*pdraw(4)+pdraw(2) 0.05*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'D3a', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.12*pdraw(3)+pdraw(1) 0.34*pdraw(4)+pdraw(2) 0.07*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'D3b', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.2*pdraw(3)+pdraw(1) 0.34*pdraw(4)+pdraw(2) 0.07*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'D4a', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.28*pdraw(3)+pdraw(1) 0.34*pdraw(4)+pdraw(2) 0.07*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'D4b', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.36*pdraw(3)+pdraw(1) 0.34*pdraw(4)+pdraw(2) 0.07*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'D5', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.44*pdraw(3)+pdraw(1) 0.34*pdraw(4)+pdraw(2) 0.07*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', '2D5', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.52*pdraw(3)+pdraw(1) 0.34*pdraw(4)+pdraw(2) 0.07*pdraw(3) 0.045*pdraw(4)]);
text(0.60,0.36*Nydx,'design alternatives','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'n+', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.0*pdraw(3)+pdraw(1) 0.27*pdraw(4)+pdraw(2) 0.05*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'n-', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.06*pdraw(3)+pdraw(1) 0.27*pdraw(4)+pdraw(2) 0.05*pdraw(3) 0.045*pdraw(4)]);
text(0.12,0.29*Nydx,'increment/decrement order for the design','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'grid', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.0*pdraw(3)+pdraw(1) 0.2*pdraw(4)+pdraw(2) 0.07*pdraw(3) 0.045*pdraw(4)]);
text(0.08,0.22*Nydx,'toggle grid on/off','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'close', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.0*pdraw(3)+pdraw(1) 0.07*pdraw(4)+pdraw(2) 0.09*pdraw(3) 0.045*pdraw(4)]);
text(0.10,0.09*Nydx,'close figure, exit/quit','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'reset', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.0*pdraw(3)+pdraw(1) 0.01*pdraw(4)+pdraw(2) 0.09*pdraw(3) 0.045*pdraw(4)]);
text(0.10,0.03*Nydx,'reset default values, reinitialize program','FontSize',FontInfo)

set(gcf,'DefaultTextColor','k')
axis('off')
