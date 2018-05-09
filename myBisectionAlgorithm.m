function [xrnew] = myBisectionAlgorithm (func,lb,ub)
syms f(x);
f(x)=func;
lower_bound=lb;
upper_bound=ub;
xrnew=(lower_bound + upper_bound)/2;
xrold=0;
i=1;
while  abs((xrnew-xrold))> 0.0001 && i<50
    
    if (f(upper_bound)*f(xrnew)<0)
        lower_bound=xrnew;
        
    else if (f(lower_bound)*f(xrnew)<0)
        upper_bound=xrnew;
        else 
            break;
        end     
    end
    xrold = xrnew;
    xrnew = (lower_bound+upper_bound) /2;
    i=i+1;
end

end
