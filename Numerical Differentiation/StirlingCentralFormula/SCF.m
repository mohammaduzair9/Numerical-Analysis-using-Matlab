%A plane is being tracked by radar, and data are taken every second in polar coordinates  and 
%At  seconds, use Stirling’s central difference to find the vector expressions for velocity  and acceleration . The velocity and acceleration given in polar coordinates are

t=[200 202 204 206 208 210]; % inputting values of t 
ftheeta=[0.75 0.72 0.70 0.68 0.67 0.66]; % inputting values of theeta
fr=[5120 5370 5560 5800 6030 6240]; % inputting values of r
dt=zeros(6,10); % function 
for i=1:6 dt(i,1)=t(i);% for loop 
dt(i,2)=ftheeta(i); % calling function 
end 
dr=zeros(6,10); % function 
for i=1:6 dr(i,1)=t(i);% for loop 
dr(i,2)=fr(i); % calling function 
end 
n=5; % number of iterations 
for j=3:10
for i=1:n
dt(i,j)=dt(i+1,j-1)-dt(i,j-1);
end
n=n-1;
end
dt
n=5;
for j=3:10
for i=1:n
dr(i,j)=dr(i+1,j-1)-dr(i,j-1);
end
n=n-1;
end 
dr
h=t(2)-t(1) % finding the value of h
% using the stirling interpolation formula 
 fdtheeta=(ftheeta(5)-ftheeta(3))/(2*h)
 fd2theeta=(dt(5,3)-dt(3,3))/h
 fdr=(fr(5)-fr(3))/(2*h)
 fd2r=(dr(5,3)-dt(3,3))/h
 v=fdr+fr*fdtheeta
 a=(fd2r-fr*(fdtheeta)^2)+(fr*fd2theeta+2*fdr*fdtheeta)
