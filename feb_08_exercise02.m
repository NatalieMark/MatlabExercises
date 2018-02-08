clear; %clear workspace
close all; %close all figues

Tua = [0.866, -0.500, 0.000, 11.000;
        0.500, 0.866, 0.000, -1.000;
        0.000, 0.000, 1.000, 8.000;
        0, 0, 0, 1];
Tba = [0.866, 0, 0, 0;
        0.000, 0.866, -0.5, 10;
        0.000, 0, 1, 8;
        0, 0, 0, 1];
Tcu = [0.866, -0.5, 0, -3;
        0.433, 0.750, -0.5, -3;
        0.25, 0.433, 0.866, 3;
        0, 0, 0, 1];

%find Tbc
%Tbc = Tba * inv(Tua) * inv(Tcu);

%Explanation:
%
%Tbc = Tba * inv(Tua) * inv(Tcu)
%Tbc = Tba * Tau * Tuc
%Tbc = Tbu * Tuc
%Tbc = Tbc
%
%Calculations:
%
Tau = inv(Tua);
Tuc = inv(Tcu);
Tbu = Tba * Tau;
Tbc = Tbu * Tuc;