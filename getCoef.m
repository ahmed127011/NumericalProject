function f =getCoef(str)
syms x;
f = sym2poly(str2sym(str));
f = fliplr(f);

