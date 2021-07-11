function [ex,ey]=mid_1505041(ode,exi,exf,xi,yi,h)
ex=exi:h:exf;
n=length(ex);
ey=zeros(1,n);
ex(1)=xi;
ey(1,1)=yi;

for i=1:n-1
    k1=ode(ex(i));
    k2=ode(ex(i)+(0.5*h));
    ey(1,i+1)=ey(1,i)+(k2*h);
end


