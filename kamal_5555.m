syms f(x)
f(x) = exp(x)+(x^2)-x-4;
func= matlabFunction(f);
%FixedPoint(4,func)
Newton_Raphson(3.5,func)
%Secant(-1.5,-1.51,func)
