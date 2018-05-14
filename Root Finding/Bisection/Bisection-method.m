xl=input('Enter lower guess:') ;
xu=input('Enter upper guess:');
tol=input('Enter tolerance(recommended 0.001):');

if f(xu)*f(xl)<0
else
fprintf('Wrong Guess!Enter new guess\n');
xl=input('Enter lower guess:\n') ;
xu=input('Enter upper guess:\n');
end
for i=2:1000
xr=(xu+xl)/2;
if f(xu)*f(xr)<0
xl=xr;
else
xu=xr;
end
if f(xl)*f(xr)<0
xu=xr;
else
xl=xr;
end
xnew(1)=0;
xnew(i)=xr;
if abs((xnew(i)-xnew(i-1))/xnew(i))<tol,break,
end
end
str = ['Root: ', num2str(xr), ' | Iterations: ', num2str(i), '']
