function [str_arr] = FixedPoint(x_i1,func)
syms f(x)
f(x) = func;
syms g(x)
g(x) = f+x;
x_i2 = double(g(x_i1));
iterations = 1;
error =abs(x_i2-x_i1);
string_x_i1 = num2str(x_i1);
string_x_i2 = num2str(x_i2);
string_error = num2str(error);
str = ['x_i1 = ' string_x_i1 '  x_i2 =  ' string_x_i2  '  error =  '  string_error];
str_arr = {str};

while error > .0001 && iterations < 50
    iterations = iterations+1;
    x_i1 = x_i2;
    x_i2 = double(g(x_i1));
    error =abs(x_i2-x_i1);
    
    string_x_i1 = num2str(x_i1);
    string_x_i2 = num2str(x_i2);
    string_error = num2str(error);
    str = ['x_i1 = ' string_x_i1 '  x_i2 =  ' string_x_i2  '  error =  '  string_error];
    str_arr = cat(1,str_arr,str);
    %numel(str_arr)
end

end



