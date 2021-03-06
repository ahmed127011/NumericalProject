function [str_arr,lower_boundArr,upper_boundArr,result] = myBisectionAlgorithm (func,lb,ub,maxIterations,precision)
syms f(x);
f(x)=func;
lower_bound=lb;
upper_bound=ub;
xrnew=(lower_bound + upper_bound)/2;
xrold=0;
i=1;
error =abs((xrnew-xrold)); 

string_xl = num2str(lower_bound);
string_xu = num2str(upper_bound);
string_xrnew = num2str(xrnew);
string_error = num2str(error);
lower_boundArr = {string_xl};
upper_boundArr = {string_xu};
str = ['xl = ' string_xl '  xu =  ' string_xu ' xr =  ' string_xrnew  '  error =  '  string_error];
str_arr = {str};


while  error> precision && i<maxIterations
    
    if (f(upper_bound)*f(xrnew)<0)
        lower_bound=xrnew;
        
    else
        if (f(lower_bound)*f(xrnew)<0)
        upper_bound=xrnew;
        else 
            break;
        end     
    end
    xrold = xrnew;
    xrnew = (lower_bound+upper_bound) /2;
    error =abs((xrnew-xrold));
    string_xl = num2str(lower_bound);
    string_xu = num2str(upper_bound);
    string_xrnew = num2str(xrnew);
    string_error = num2str(error);
    str = ['xl = ' string_xl '  xu =  ' string_xu ' xr =  ' string_xrnew  '  error =  '  string_error];
    str_arr = cat(1,str_arr,str);
    lower_boundArr =  cat(1,lower_boundArr,string_xl);
    upper_boundArr = cat(1,upper_boundArr, string_xu);
    i=i+1;
end
result = xrnew;
end
