x = input('Starting guess :');
tolerance = 1e-8;
iterations = 0;
while (iterations<30) && (abs(func(x))>tolerance)
x = x-func(x)/double(subs(func_prime(x)));
iterations = iterations + 1;
end
if iterations==30
    disp('No root found')
else
    disp(['Root=' num2str(x,10)        'found in'...
        int2str(iterations)       'iterations.'])
end
