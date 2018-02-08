clear; %clear workspace
close all; %close all figues

Ay = roty(deg2rad(30));
Ax = rotx(deg2rad(45));
B = [1,0,0;0,1,0;0,0,1];            %non-rotated axis
Ra = Ay * Ax;

%Plotting
trplot(B);
hold on
trplot(Ra, 'color', 'black');       %Plotting the rotations
tranimate(Ra, 'color', 'black');    %animate the plot

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;

Az = rotz(deg2rad(90));
Ax = rotx(deg2rad(180));
B = [1,0,0;0,1,0;0,0,1];            %non-rotated axis
Ra = Az * Ax;

%Plotting
trplot(B);
hold on
trplot(Ra, 'color', 'black');       %Plotting the rotations
tranimate(Ra, 'color', 'black');    %animate the plot

