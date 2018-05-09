function [] = Newton_Raphson(x_i1,func)
syms f(x)
f(x) =func;
fx = double(f(x_i1));
dif = diff(f,x);
dfdx = double(dif(x_i1));
x_i2 = x_i1-double(fx/dfdx);
iterations = 1;
error =abs(x_i2-x_i1);
while error > .0001 && iterations < 50
    iterations = iterations+1;
    x_i1 = x_i2;
    fx = double(f(x_i1));
    dfdx = double(dif(x_i1));
    x_i2 = x_i1-double(fx/dfdx);
    error =abs(x_i2-x_i1);
end
x_i2
iterations

end

