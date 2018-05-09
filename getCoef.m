function f =getCoef(str)
syms x;
f = sym2poly(sym(str));
f = fliplr(f);

