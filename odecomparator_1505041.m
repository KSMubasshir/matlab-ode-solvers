fanalytic=@(x)...
    x.^4-5*x.^2+3*x;
ode=@(x)...
    4*x.^3-10*x+3;

x=0:0.5:4;
plot(x,fanalytic(x),'o-')
hold on

[ex,ey]=euler_1505041(ode,0,4,0,-1,0.5);
plot(ex,ey,'k')

[hx,hy]=huen_1505041(ode,0,4,0,-1,0.5);
plot(hx,hy,'c')

[mx,my]=mid_1505041(ode,0,4,0,-1,0.5);
plot(mx,my,'r')

[rx,ry]=ralston_1505041(ode,0,4,0,-1,0.5);
plot(rx,ry,'g')

legend('Analytic','Euler','Huen','Mid Point','Ralston')