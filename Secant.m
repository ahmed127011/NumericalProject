function [str_arr] = Secant (x_i0,x_i1,func)
syms f(x)
f(x) = func;
fx_0 = double(f(x_i0));
fx_1 = double(f(x_i1));
dif = diff(f,x);
x_i2 = x_i1-double(fx_1*(x_i0-x_i1)/(fx_0-fx_1))
iterations = 1;
error =abs(x_i2-x_i1);

string_x_i1 = num2str(x_i1);
string_x_i2 = num2str(x_i2);
string_func1 = num2str(fx_0);
string_func2 = num2str(fx_1);
string_error = num2str(error);
str = ['x_i1 = ' string_x_i1 '  x_i2 =  ' string_x_i2 '  f(x_i1) =  ' string_func1  ' f(x_i2) =  ' string_func2  '  error =  '  string_error];
str_arr = {str};

while error > .0001 && iterations < 50
    iterations = iterations+1;
    x_i0 = x_i1;
    x_i1 = x_i2;
    fx_0 = double(f(x_i0));
    fx_1 = double(f(x_i1));
    x_i2 = x_i1-double(fx_1*(x_i0-x_i1)/(fx_0-fx_1));
    error =abs(x_i2-x_i1);
    
    string_x_i1 = num2str(x_i1);
    string_x_i2 = num2str(x_i2);
    string_func1 = num2str(fx_0);
    string_func2 = num2str(fx_1);
    string_error = num2str(error);
    str = ['x_i1 = ' string_x_i1 '  x_i2 =  ' string_x_i2 '  f(x_i1) =  ' string_func1  ' f(x_i2) =  ' string_func2  '  error =  '  string_error];
    str_arr = cat(1,str_arr,str);
    
end

end