function [str_arr] = Newton_Raphson(x_i1,func)
syms f(x)
f(x) =func;
fx = double(f(x_i1));
dif = diff(f,x);
dfdx = double(dif(x_i1));
x_i2 = x_i1-double(fx/dfdx);
iterations = 1;
error =abs(x_i2-x_i1);

string_x_i1 = num2str(x_i1);
string_x_i2 = num2str(x_i2);
string_func = num2str(fx);
string_drev = num2str(dfdx);
string_error = num2str(error);
str = ['x_i1 = ' string_x_i1 '  x_i2 =  ' string_x_i2 '  f(x) =  ' string_func  ' df/dx =  ' string_drev  '  error =  '  string_error];
str_arr = {str};
while error > .0001 && iterations < 50
    iterations = iterations+1;
    x_i1 = x_i2;
    fx = double(f(x_i1));
    dfdx = double(dif(x_i1));
    x_i2 = x_i1-double(fx/dfdx);
    error =abs(x_i2-x_i1);
    
    string_x_i1 = num2str(x_i1);
    string_x_i2 = num2str(x_i2);
    string_func = num2str(fx);
    string_drev = num2str(dfdx);
    string_error = num2str(error);
    str = ['x_i1 = ' string_x_i1 '  x_i2 =  ' string_x_i2 '  f(x) =  ' string_func  ' df/dx =  ' string_drev  '  error =  '  string_error];
    str_arr = cat(1,str_arr,str);

end

end

