syms f(x)
f(x) = exp(x)+(x^2)-x-4;
func= matlabFunction(f);
%FixedPoint(4,func)
%Newton_Raphson(3.5,func)
%Secant(-1.5,-1.51,func)
%birgeVietaCaller([2 3 1],0);

Lagrange(2,{10,15,20,22.5,30},{227.04,362.78,517.35,602.97,901.67},16);