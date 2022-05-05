%% Quiz 3 Michael Calixto Part (a)
clear
clc
% Temperature Convertion
C1=40; % Temp Weather
C2=20; % Temp Room
TK=273.15; % Convert to K
K1=C1+TK;
K2=C2+TK;
disp(['Convertion of Celsius to Kelvin of 40 is ',num2str(K1),' K'])
disp(['Convertion of Celsius to Kelvin of 20 is ',num2str(K2),' K'])
% Part A for interpolate of value h
Ay1=582.21; % hg2
Ay2=578.16; % hg1
Ax1=300;  % Temp 2, K
Ax2=290;  % Temp 1, K
Ax=K2;   % At Temp we need, K
Ay = ((Ay2-Ay1)/(Ax2-Ax1))*(Ax-Ax1)+Ay1;
h2=Ay;
disp(['the answer for interpolate of value h2 is ',num2str(Ay),' kJ/kg'])

% Part B for interpolate of value s
By1=4.7360;
By2=4.7332;
Bx1=290; % Temp 2, K
Bx2=300;% K
Bx=K2;
By = ((By2-By1)/(Bx2-Bx1))*(Bx-Bx1)+By1;
disp(['the answer for interpolate of value s2 is ',num2str(By),' kJ/kg*K'])

% Part C for interpolate of value MPa
Cy1= 0.88742 ; %MPa 
Cy2= 1.1308 ; % MPa 
Cx1= 310 ;  % K
Cx2= 320  ;  % K
Cx= K1 ;   % AT C
Cy = ((Cy2-Cy1)/(Cx2-Cx1))*(Cx-Cx1)+Cy1;
disp(['the answer for interpolate of value Mpa is ',num2str(Cy),' MPa'])

% Part D for interpolate of value
Dy1= 594.7; % h at .8 MPa 
Dy2= 591.68 ; % h at 1 MPa
Dx1=.8;  % MPa
Dx2=1;  % MPa
Dx=Cy;   % AT MPa
Dy = ((Dy2-Dy1)/(Dx2-Dx1))*(Dx-Dx1)+Dy1;
h3=Dy;
disp(['the answer for interpolate of value h is ',num2str(Dy),' KJ/kg'])

% FROM THE SAMPLE Part D for h3
% Dy1= 425.14 ;
% Dy2= 420.49;
% Dx1= 1.571 ;
% Dx2= 1.2880;
% Dx3= 1.5335;
% Dx = ((Dx3-Dx1)/(Dx2-Dx1))*(Dy2-Dy1)+Dy1;
% h3 = Dx;
% disp(['the answer for interpolate of value h3 is ',num2str(Dx),' kJ/kg '])

% Part E for interpolate of value h4
Ey1= 454.53 ; % hf
Ey2= 464.91 ; % hf 
Ex1= 310;  % K 
Ex2= 320 ;  % K
Ex= 313.15 ;   % AT C
Ey = ((Ey2-Ey1)/(Ex2-Ex1))*(Ex-Ex1)+Ey1;
disp(['the answer for interpolate of value h4 is ',num2str(Ey),' kJ/kg'])

h4=457.7997; % kJ/kg
h1=h4;

% Part F for q(rej)
qrej= h4-h3;
disp(['the answer for value q(rej) is ',num2str(qrej),' kJ/kg'])

Qadd= 12000; % kJ/h
m=Qadd/(h2-h1);
disp(['the answer for value m is ',num2str(m),' kg/h'])

Qrej=m*qrej;
disp(['the answer for value Qrej is ',num2str(Qrej),' kg/h'])

WKc= m*(h2-h3);
disp(['the answer for value WKc is ',num2str(WKc),' kJ/h'])

WKc2 = WKc*0.0002777778; % kW
disp(['the answer for value WKc is ',num2str(WKc2),' kW'])

COP = Qrej/WKc;
disp(['the answer for COP value is ',num2str(COP),' kJ/kg'])

COR = -Qadd/WKc;
disp(['the answer for COR value is ',num2str(COR),'kJ/kg'])
