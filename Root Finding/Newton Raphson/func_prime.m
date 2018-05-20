function [value] = func_prime(x)
syms f(x)
f(x) = func(x);
value = diff(f,x);
