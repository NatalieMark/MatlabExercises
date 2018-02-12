clear; %clear workspace
close all; %close all figues

%Extrinsic: XYZ
Ax = rotx(deg2rad(30));
Ay = roty(deg2rad(50));
Az = rotz(deg2rad(-20));
Ra = Ax * Ay * Az;

%Plotting
trplot(Ra);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Intrinsic: ZYX
Bx = rotx(deg2rad(20));
By = roty(deg2rad(-15));
Bz = rotz(deg2rad(30));

Rb = Bz * By * Bx;

%Plotting
figure();
trplot(Rb);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Angle representation
Kx = 0.3379;
Ky = 0.4808;
Kz = 0.8093;
t = 21.8583;
C = (1-cos(t));
A1 = Kx*Kx*C+cos(t);
A2 = Kx*Ky*C+Kz*sin(t);
A3 = Kx*Kz*C+Ky*sin(t);
A4 = Ky*Ky*C+cos(t);
A5 = Ky*Kz*C-Kx*sin(t);
A6 = Kz*Kz*C+cos(t);

Ar = [  A1, A2, A3;
        A2, A4, A5;
        A3, A5, A6];
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Quaternions slide 34
e1=0.064071;
e2=0.091158; 
e3=0.15344; 
e4=0.98186;

0.064071