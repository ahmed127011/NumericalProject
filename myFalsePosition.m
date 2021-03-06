function [str_arr,lower_boundArr,upper_boundArr]= myFalsePosition (func,lb,ub,maxIterations,precision)
syms f(x);
f(x)=func;
xl=lb;
xu=ub;
double(f(180));
xrnew= double(((xl*f(xu))- (xu*f(xl)))/(f(xu) - f(xl)));
xrold=0;
i=1;
error = abs(xrnew-xrold );

string_xl = num2str(xl);
string_xu = num2str(xu);
string_xrnew = num2str(xrnew);
string_error = num2str(error);

str = ['xl = ' string_xl '  xu =  ' string_xu ' xr =  ' string_xrnew  '  error =  '  string_error];
str_arr = {str};
lower_boundArr = {string_xl};
upper_boundArr = {string_xu};

while  error > precision && i< maxIterations
    if (f(xu)*f(xrnew)<0)
        xl=xrnew;
    else
        if (f(xl)*f(xrnew)<0)
        xu=xrnew;
        else 
            break;   
        end
    end
    xrold = xrnew;
    xrnew= double(((xl*f(xu))- (xu*f(xl)))/(f(xu) - f(xl)));
    i=i+1;
    error = abs(xrnew-xrold );
    
    string_xl = num2str(xl);
    string_xu = num2str(xu);
    string_xrnew = num2str(xrnew);
    string_error = num2str(error);
    str = ['xl = ' string_xl '  xu =  ' string_xu ' xr =  ' string_xrnew  '  error =  '  string_error];
    str_arr = cat(1,str_arr,str);
    lower_boundArr =  cat(1,lower_boundArr,string_xl);
    upper_boundArr = cat(1,upper_boundArr, string_xu);
    
end

end


