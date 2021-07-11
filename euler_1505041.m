function [ex,ey]=euler_1505041(ode,exi,exf,xi,yi,h)
ex=exi:h:exf;
n=length(ex);
ey=zeros(1,n);
ex(1)=xi;
ey(1,1)=yi;
for i=1:n-1
    ey(1,i+1)=ey(1,i)+ode(ex(i))*h;
end


