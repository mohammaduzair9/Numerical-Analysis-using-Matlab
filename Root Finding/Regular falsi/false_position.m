Inp = input('Give an equation in x: ','s')  ;
 	x0 = input('Starting guess point 1 :');
	x1 = input('Starting guess point 2 :');
x2 = x0;
tols=input('Enter tolerance:');
func = str2func(['@(x)', Inp]);
iterations = 0;
 
while ((iterations<30) && (abs(func(x2))>tols))||(iterations==0)
iterations = iterations + 1 ;
f0 = func(x0);
f1 = func(x1);
x2 = x0-f0*(x1-x0)/(f1-f0);
if func(x2)*f0 < 0
x1 = x2;
else	
x0 = x2;
end
end

if iterations==30
disp('No root found')
else
disp([' Root = ' num2str(x2,10) ' found in ' ...
num2str(iterations) ' iters.'])
end
 
