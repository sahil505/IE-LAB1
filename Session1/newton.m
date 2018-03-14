% coded by SAHIL KHOKHAR (2015ME20758)
function equationRoot = newton(f,g,xo,tol)

%nargin gives number of function input argument 
if (nargin == 4)
    Iteration = 0;
    fprintf('Iteration No.\t   xo\t\t   x1\t\t\tf(x)\t\t\tg(x)\n');
    fprintf('=========\t\t ======\t\t ======\t\t===========\t\t===========\t\t\n');
    while (abs(f(xo)) >= tol)
        Iteration = Iteration + 1;
        if (g(xo) == 0)
            fprintf('g(xo) is zero on iteration number %d',Iteration);
            fprintf('\n');
            disp('We can''t compute the root');
            return;
        end
        x1 = xo - (f(xo)/g(xo));
        fprintf('%3d',Iteration);
        fprintf('%20.12f',xo);
        fprintf('%12.12f',x1);
        fprintf('%16.12f',f(xo));
        fprintf('%16.12f',g(xo));
        fprintf('\n');
        xo = x1;
    end
    fprintf('\nThe root of the function is %.6f', xo);
    equationRoot = xo;
    
end

if (nargin < 3)
    error('Arguments are not complete. Please retry with complete arguments:)');
end
