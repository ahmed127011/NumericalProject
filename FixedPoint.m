function [] = FixedPoint(x_i1,func)
syms f(x)
f(x) = func;
syms g(x)
g(x) = f+x;
x_i2 = double(g(x_i1));
iterations = 1;
error =abs(x_i2-x_i1);
while error > .0001 && iterations < 50
    iterations = iterations+1;
    x_i1 = x_i2;
    x_i2 = double(g(x_i1));
    error =abs(x_i2-x_i1);
end
x_i2
iterations

end



