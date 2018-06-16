t= [0:8]; 
y= [40.12 66.78 80.17 86.71 80.77 66.78 44.41 10.51 -32.60];
 
pc = polyfit(t,y,1); % 1 means linear fit
plot (t, y,'k+');
hold on;
plot(t,polyval(pc,t),'r-');
txt = sprintf('Best fit line y=%.2ft + %.2f',pc(1),pc(2));
legend('Data points',txt);
