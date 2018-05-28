function [x,iter] = newtonm(f,jacob2x2)
 
% taking input from user
f1inp = input('Enter the first equation in x: ','s');
f1 = str2func(['@(x)', f1inp]);
f2inp = input('Enter the second equation in x: ','s');
f2 = str2func(['@(x)', f2inp]);
iterations = 50;
tolerance = input('Enter tolerance:');
divergance_val = input('Enter max divergence value:');
guess = input('Enter the initial guess (2 rows 1 column) :');
while (iterations>0)
    	matrix = feval(jacob2x2,guess);
    	%calculating determinant
    	if abs(det(matrix))<tolerance
        	error('Error: Matrix is singular');   
    	end;
    
    	var = guess - inv(matrix)*feval(f,guess); 
    	if abs(feval(f,var))<tolerance
      	x=var;
        	iter = 50-iterations;
        	return;
    	end;
    
    	if abs(feval(f,guess))>divergance_val
        	iter = 50-iterations;
        	disp(['iterations = ',num2str(iter)]);
        	error('Error: Solution is diverging');
    	end;
    	iterations = iterations - 1;
    	guess = var;
end;
error('Error: Could not converge in 50 iterations');
