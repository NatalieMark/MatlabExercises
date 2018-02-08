clear; %clear workspace
close all; %close all figues

Rx = rotx( deg2rad(60) )
Rz = rotz( deg2rad(15) )

R1 = Rx * Rz
R2 = Rz * Rx


%Plotting
trplot(R1)
hold on             %Keeping the plot
trplot(R2, 'color', 'g')	%Plotting another as well

%Animating plot
figure()			%Creating a figure
tranimate(Rx)		%Rotating to new position
tranimate(Rx, R1)	%Rotating to new position, that is a combination of Rx and R1
