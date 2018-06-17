%Calculate and plot a best fit 2nd order polynomial for this data set.

%T = [0:8];
%Y = [40.12 66.78 80.17 86.71 80.77 66.78 44.41 10.51 -32.60];


t= [0:8];
y= [40.12 66.78 80.17 86.71 80.77 66.78 44.41 10.51 -32.60];
 
pc = polyfit (t, y,2); % 2 means 2nd degree fit
plot (t, y,'k+');
hold on;
plot (t, polyval (pc, t),'r-');
 
txt = sprintf ('Best fit line y=%.2ft^2+%.2ft + %.2f',pc(1), pc (2), pc(3));
legend ('Data points',txt);

%This data represents the motion of an object shot into the air where (y=y0+v0*t+.5*a*t^2).

%Find:
%1.	What is the initial height, initial velocity, and acceleration?

%Equation of motion:	(y0)   +  (v0*t) + (0.5at2)
%2nd order equation: 	40.89 + 29.51*t + -4.84t2 

%Here 	y0 = initial height 	= 40.89m
%		v0 = initial velocity	= 29.51m/s
%		a   = acceleration	= -9.68m/s2

%2.	At what positive time is y=0?
root = roots(pc)
%At time t = 7.2646 s, height is zero


%3.	What is the height at t=2.5?
height = polyval(pc,2.5)
%Height at time 2.5 s is 84.8382 m

%4.	What is the max height, and when does it occur?
d = polyder(pc)
time = roots(d)
max_height = polyval (pc, time)
%Maximum height us 85.9045m at it occurs at 3.0506 s.


 
 
