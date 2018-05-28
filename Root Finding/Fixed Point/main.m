str = input('Give an equation in x: ','s')  ;
fx = str2func(['@(x)', str]);
starting_value = input('Enter starting value: ');
tolerance = input('Input tolerance: ');
maxits = input('Input number of iterations: ');
[root,iflag] = Fixed(fx,starting_value, tolerance, maxits);
switch iflag
    	case -1
        disp('Root finding failed')
    	otherwise
        disp([' Root = ' num2str(root) ...
        ' found in ' num2str(iflag) ' iterations'])
end
