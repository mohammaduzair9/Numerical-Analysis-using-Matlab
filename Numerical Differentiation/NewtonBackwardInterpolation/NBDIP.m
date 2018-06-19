%Considering a uniform beam of one meter long simply supported at both ends, the bending moment is given by the following relation:

%Where  is the deflection,  is the bending moment and  is the flexural rigidity.
%Calculate the bending moment using Newton’s Backward Difference Formula, 
%assuming that the deflection distribution is among the following:

%Newton’s Backward Difference Formula MATLAB Program
 
x=[0.0 0.2 0.4 0.6 0.8 1.0]; % inputting values of x 
fx=[0.0 7.78 10.68 8.37 3.97 0]; % inputting values of y
dt=zeros(6,10); % function 
for i=1:6 dt(i,1)=x(i);% for loop 
dt(i,2)=fx(i); % calling function 
end 
n=5; % number of iterations 
for j=3:10
for i=1:n
dt(i,j)=dt(i+1,j-1)-dt(i,j-1)
end
n=n-1;
end 
h=x(2)-x(1) % finding the value of h
xp=0.25; % defining the value of xp 
for i=1:5
q=(xp-x(i))/h; % calculating number of intervals 
if (q>0&&q<1)
p=q;
 end
 end
 p
l=xp-(p*h)
 for i=1:6
 if(l==x(i))
 r=i;
 end
 end % calculating different value of y
  
 
 f02=dt(r,(3+1));
 f03=dt((r),(3+2));
 f04=dt((r),(3+3));
% using the backward interpolation formula 
 fd2p=((f02) + ((p+1)*(f03))+((2*p^3+9*p^2+11*p)*(f04)/(12)))
 
 syms xl;
 
yl = newtint(x,fx,xl,2);
 
dy(xl)=diff(yl);
 
ddy(xl)=diff(diff(yl));
 
EI=(1+dy(0.9)).^(1.5)
 
M = fd2p*EI

