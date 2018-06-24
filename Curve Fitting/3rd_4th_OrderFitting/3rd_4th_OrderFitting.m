%data points x and y
x = [0 .5 1 1.5 2 2.5], 
y = [-0.4326 -0.1656 3.1253 4.7877 4.8535 8.6909]
 
%plotting points on the graph
plot (x, y,'k+');
hold on;
 
%3rd degree polynomial fitting
pc1 = polyfit(x,y,3);
plot(x,polyval(pc1,x),'r-');
 
%4th degree polynomial fitting
pc2 = polyfit(x,y,4);
plot(x,polyval(pc2,x),'b-');
 
txt1 = sprintf('Best fit 3rd geree polynomial y=%.2fx^3+%.2fx^2+%.2fx+%.2f',pc1(1),pc1(2),pc1(3),pc1(4));
txt2 = sprintf('Best fit 4th degree polynomial y=%.2fx^4+%.2fx^3+%.2fx^2+%.2fx+%.2f',pc2(1),pc2(2),pc2(3),pc2(4),pc2(5));
legend('Data points',txt1,txt2);

