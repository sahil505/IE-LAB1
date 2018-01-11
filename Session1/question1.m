% coded by SAHIL KHOKHAR (2015ME20758)
clc;close all;clear all;
a=-2; b=2;
% NOTE for complex roots take a=-1-i; b=1+i;
if func2(a)*func2(b)>0
    return
    
else
    n=1
    c=(a+b)/2
    %NOTE for complex root put tolerance (epsilon) to be 1
    epsilon=0.00000001
    while abs(a-b)> epsilon
        if(func2(a)*func2(c)<0)
            b=c
        else  
            a=c
        end
        n=n+1
        c=(a+b)/2
    end
end
fprintf('The answer is %f\n', c);
% calling the newton method after finding the value of the c
newton(@(x)7*x^5 + 3*x^3 + 21*x^2 + 10*x + 4, @(x)30*x^4 + 9*x^2 + 42*x + 10, c, 0.00000001)