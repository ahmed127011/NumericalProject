function [str_arr,lower_boundArr,upper_boundArr] = Secant (x_i0,x_i1,func,maxIteration,precision)
syms f(x)
f(x) = func;
fx_0 = double(f(x_i0));
fx_1 = double(f(x_i1));
%dif = diff(f,x);
x_i2 = x_i1-double(fx_1*(x_i0-x_i1)/(fx_0-fx_1));
iterations = 1;
error =abs(x_i2-x_i1);

string_x_i1 = num2str(x_i1);
string_x_i2 = num2str(x_i2);
string_func1 = num2str(fx_0);
string_func2 = num2str(fx_1);
string_error = num2str(error);
str = ['x_i1 = ' string_x_i1 '  x_i2 =  ' string_x_i2 '  f(x_i1) =  ' string_func1  ' f(x_i2) =  ' string_func2  '  error =  '  string_error];
str_arr = {str};
lower_boundArr = {string_x_i1};
upper_boundArr = {string_x_i2};

while error > precision && iterations < maxIteration
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
    lower_boundArr =  cat(1,lower_boundArr,string_x_i1);
    upper_boundArr = cat(1,upper_boundArr, string_x_i2);
     
end

% end
% function [str_arr,lower_boundArr,upper_boundArr] = FixedPoint(x_i1,func,maxIteration,precision)
% syms f(x)
% f(x) = func;
% syms g(x)
% g(x) = f+x;
% x_i2 = double(g(x_i1));
% iterations = 1;
% error =abs(x_i2-x_i1);
% string_x_i1 = num2str(x_i1);
% string_x_i2 = num2str(x_i2);
% string_error = num2str(error);
% str = ['x_i1 = ' string_x_i1 '  x_i2 =  ' string_x_i2  '  error =  '  string_error];
% str_arr = {str};
% lower_boundArr = {string_x_i1};
% upper_boundArr = {string_x_i2};
% 
% while error > precision && iterations < maxIteration
%     iterations = iterations+1;
%     x_i1 = x_i2;
%     x_i2 = double(g(x_i1));
%     error =abs(x_i2-x_i1);
%     
%     string_x_i1 = num2str(x_i1);
%     string_x_i2 = num2str(x_i2);
%     string_error = num2str(error);
%     str = ['x_i1 = ' string_x_i1 '  x_i2 =  ' string_x_i2  '  error =  '  string_error];
%     str_arr = cat(1,str_arr,str);
%     lower_boundArr =  cat(1,lower_boundArr,string_x_i1);
%     upper_boundArr = cat(1,upper_boundArr, string_x_i2);
%     %numel(str_arr)
% end
% 
% end