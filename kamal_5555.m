syms f(x)
f(x) = exp(x);
func= matlabFunction(f);
%FixedPoint(4,func)
%Newton_Raphson(1,func,50,0.0001)
%Secant(-1.5,-1.51,func)
%birgeVietaCaller([2 3 1],0);
%Lagrange(5,{0,10,15,20,22.5,30},{0,227.04,362.78,517.35,602.97,901.67},16);

newton_interpolation(2,[2 4.25 5.25 7.81 9.2 10.6],[7.2 7.1 6.0 5.0 3.5 5.0],4);