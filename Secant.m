function [x_i2] = Secant (x_i0,x_i1,func)
syms f(x)
f(x) = func;
fx_0 = double(f(x_i0));
fx_1 = double(f(x_i1));
dif = diff(f,x);
x_i2 = x_i1-double(fx_1*(x_i0-x_i1)/(fx_0-fx_1))
iterations = 1;
error =abs(x_i2-x_i1);
while error > .0001 && iterations < 50
    iterations = iterations+1;
    x_i0 = x_i1;
    x_i1 = x_i2;
    fx_0 = double(f(x_i0));
    fx_1 = double(f(x_i1));
    x_i2 = x_i1-double(fx_1*(x_i0-x_i1)/(fx_0-fx_1))
    error =abs(x_i2-x_i1);
end
x_i2
iterations

end