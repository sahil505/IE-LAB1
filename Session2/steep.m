u=0.2;
x0=[0;0];
alf=1;
epsilon=0.0000001;
p=-gradexpression(x0);
while expression(x0+alf*p) > expression(x0)- u*alf*gradexpression(x0)'*gradexpression(x0)
    alf=alf/2;
end
x1=x0-alf*gexpression(x0);
while abs(expression(x1)-expression(x0)) > epsilon
    
    x0=x1;
    x1=x0-alf*gradexpression(x0);
end
    



