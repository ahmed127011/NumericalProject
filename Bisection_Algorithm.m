%% Problem:
%find an proximation for cubic root of 25 within 10^-4.
%% Solution:
%let y=cubic root of 25,
%then y^3-25=0.
%now we can you the bisection algorithm 

func =@(y)y^3-25;
lower_bound=0;
upper_bound=5;
mid=(lower_bound + upper_bound)/2;

while abs(func(mid))>=(10^-4)
    
    if (func(mid)*func(upper_bound))<0
        lower_bound=mid;
        
    else
        upper_bound=mid;
        
    end
    
    mid = (lower_bound+upper_bound) /2;
    
end

fprintf('the approximated value equals %f',mid);
        
