function [str_arr] = myBisectionAlgorithm (func,lb,ub)
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
str = ['xl = ' string_xl '  xu =  ' string_xu ' xr =  ' string_xrnew  '  error =  '  string_error];
str_arr = {str};


while  error> 0.0001 && i<50
    
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
    error =abs((xrnew-xrold));
    string_xl = num2str(lower_bound);
    string_xu = num2str(upper_bound);
    string_xrnew = num2str(xrnew);
    string_error = num2str(error);
    str = ['xl = ' string_xl '  xu =  ' string_xu ' xr =  ' string_xrnew  '  error =  '  string_error];
    str_arr = cat(1,str_arr,str);
    i=i+1;
end

end
