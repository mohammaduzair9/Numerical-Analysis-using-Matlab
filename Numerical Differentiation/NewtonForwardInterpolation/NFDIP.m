x=[0 2 4 7 10 12];
fx=[20 20 12 7 6 6];
dt=zeros(6,10); 
for i=1:6
    dt(i,1)=x(i);
dt(i,2)=fx(i);
end 
n=5; 
for j=3:10
for i=1:n
dt(i,j)=dt(i+1,j-1)-dt(i,j-1);
end
n=n-1;
end 
h=x(2)-x(1); 
xp=1.5;  
for i=1:5
q=(xp-x(i))/h;  
if (q>0&&q<1)
p=q;
 end
 end
 p;
l=xp-(p*h);
 for i=1:5 
 if(l==x(i))
 r=i;
 end
 end 
 f0=fx(r);
 f01=dt(r,3); 
 f02=dt(r,(3+1));
 f03=dt((r),(3+2));
 f04=dt((r),(3+3));
 
 
 fp=(f0)+((p*f01)+(p*(p-1)*f02)/(2)) + ((p*(p-1)*(p-2)*f03)/(6))+((p*(p-1)*(p-2)*(p-3)*f04)/(24));
