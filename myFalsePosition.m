function []= myFalsePosition (func,lb,ub)
syms f(x);
f(x)=func;
xl=lb;
xu=ub;
f(180)
xrnew= single(((xl*f(xu))- (xu*f(xl)))/(f(xu) - f(xl)));
xrold=0;
i=1;
%(abs(xrnew-xrold )> 0.0001 &&
while  i<8
    if (f(xu)*f(xrnew)<0)
        xl=xrnew
    else if (f(xl)*f(xrnew)<0)
        xu=xrnew;
        else 
            break;   
        end
    end
    xrold = xrnew;
    xrnew= single(((xl*f(xu))- (xu*f(xl)))/(f(xu) - f(xl)));
    i=i+1;
end
fprintf('the regula method value equals %f\n',xrnew);
end


