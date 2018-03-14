tol=0.000001;
n=0;
x=[1; 1];
y=zeros(2,1);
func=@(x) 5*x(1)^4+6*x(2)^4-6*x(1)^2+2*x(1)*x(2)+5*x(2)^2+15*x(1)-7*x(2)+13;
F=@(x)[20*x(1)^3-12*x(1)+2*x(2)+15;24*x(2)^3+2*x(1)+10*x(2)-7];
H=@(x)[60*x(1)^2-12,2;2,72*x(2)^2+10];
while n < 1000
    n = n+1;
    y= x-H(x)\F(x);
    if abs(func(y)-func(x))< tol
        disp(y);
        break;
    else
        x = y;
    end    
end
x=[1;1];
fprintf('******* CHECKING USING fminunc *******\n');
verify = fminunc(func,x);
disp(verify);

