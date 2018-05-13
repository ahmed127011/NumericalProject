function [str_arr,lower_boundArr,upper_boundArr] = FixedPoint(x_i1,func,maxIteration,precision)
syms f(x)
f(x) = func;
syms g(x)
g(x) = f+x;
% disp(g(x));
x_i2 = double(g(x_i1));
iterations = 1;
error =abs(x_i2-x_i1);
string_x_i1 = num2str(x_i1);
string_x_i2 = num2str(x_i2);
string_error = num2str(error);
str = ['x_i1 = ' string_x_i1 '  x_i2 =  ' string_x_i2  '  error =  '  string_error];
str_arr = {str};
lower_boundArr = {string_x_i1};
upper_boundArr = {string_x_i2};

while error > precision && iterations < maxIteration
    iterations = iterations+1;
    x_i1 = x_i2;
    x_i2 = double(g(x_i1));
    error =abs(x_i2-x_i1);
    
    string_x_i1 = num2str(x_i1);
    string_x_i2 = num2str(x_i2);
    string_error = num2str(error);
    str = ['x_i1 = ' string_x_i1 '  x_i2 =  ' string_x_i2  '  error =  '  string_error];
    str_arr = cat(1,str_arr,str);
    lower_boundArr =  cat(1,lower_boundArr,string_x_i1);
    upper_boundArr = cat(1,upper_boundArr, string_x_i2);
    %numel(str_arr)
end

end



