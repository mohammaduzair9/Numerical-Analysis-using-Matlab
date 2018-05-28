function [answer,iflag] = Fixed(g,xinit, tolerance, maxits)
    	iflag = 0;
    	iterations = 0 ;
    	xnext = feval(g,xinit);
   	while ( (iterations<maxits) && (abs(xnext-xinit)>tolerance) )
        iterations = iterations + 1;
        xinit = xnext;
        xnext = feval(g, xinit);
    	end
    	if iterations == maxits
        iflag = -1;
        answer = NaN;
    	else
        iflag = iterations;
        answer = xnext;
    	end
