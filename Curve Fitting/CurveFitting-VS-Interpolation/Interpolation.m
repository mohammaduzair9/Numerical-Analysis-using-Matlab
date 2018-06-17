t=[0:8]; 
y=[40.12 66.78 80.17 86.71 80.77 66.78 44.41 10.51 -32.60];
 
plot(t,y,'r-')
hold on
t2 = [4.5 8.5]
y2linear = interp1(t,y,t2)
plot(t2,y2linear,'k+')
legend('Data','Linear')
