% coded by SAHIL KHOKHAR (2015ME20758)
clc;close all;clear all;
tol = 0.00000001;
y = zeros(3,1);
x0 = [1;1;1];
null_space = [-3,-1,1]';

func = @(x) x(1)^2-2*x(1)+x(2)^3-x(3)^3+4*x(3);

constr1 = @(x) x(1)-2*x(2)+2*x(3)-2;
constr2 = @(x) x(2)+x(3)-1;

gradient = @(x) [2*x(1)-2; 3*x(2)^2; -3*x(3)^2+4];

constr3 = @(x) 6*x(1)+3*x(2)^2+3*x(3)^2-10;

jacobian = @(x) [1,-1,2; 0,1,1; -6,-6*x(2),-6*x(3)];

F = @(x) [x(1) - x(2) + 2*x(3) - 2; x(2) + x(3) - 1; -6*x(1) - 3*(x(2)^2) - 3*(x(3)^2) + 10];
          
n = 0;
while n < 1000
    n = n + 1;
     y = x0 - jacobian(x0)\F(x0);
    if abs(F(y)) < tol
        disp(y);
        break;
    else
        x0=y;
    end
end

check = fmincon(func,[1;1;1],[],[],[1,-1,2;0,1,1],[2,1]);
disp(check);