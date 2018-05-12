function result = getAllRoots( f, maxIteration,perscision)
    lb=-10000;
    ub=10000;
    i=lb;
    n=1;
    u=ub;
    co=0;
    result={};
    while i<=u &&n<50
 
        if(f(i)==0)
            result=cat(1,result,num2str(i));
            n=n+1;
            i=i+.1;
           continue; 
        end
       [str1,l,l2,temp]=Newton_Raphson(i,f,maxIteration,perscision);
       co=co+1;
       if(isnan(temp))
           q=1;
           while isnan(temp)&& i<u
           i=i+50*q;
           q=q+1;
           [str1,l,l2,temp]=Newton_Raphson(i,f,maxIteration,perscision);
                  co=co+1;
 
 
           end
       end
       c=n-1;
       while(c ~= 0)
           if(abs(temp-str2double(result{c}))<.001)
               break;
           end
           c=c-1;
       end
       if(c==0)
           result=cat(1,result,num2str(temp));
           n=n+1;
           i=temp+0.1;
       else
 
           i=i+(i-temp);
       end
 
    end
 
    l=str2double(result{1});
 
    [a1,a2,a,u]=Newton_Raphson(10000,f,maxIteration,perscision);
 
    if(isnan(u))
        u=ub;
    end
 
    i=1;
    k=.5;
    while(l+k*i<u)
        if(f(l+k*i)==0)
            c=n-1;
            while(c ~= 0)
               if(abs(l+k*i-str2double(result{c}))<.001)
 
 
                   break;
               end
               c=c-1;
            end
           if(c==0)
               result=cat(1,result,num2str(l+k*i));
               n=n+1;
           end
           i=i+1;
           continue;
        end
 
        if(f(l+k*i)*f(l+k*(i+1))<0)
 
           [str1,l1,l2,temp]=myBisectionAlgorithm(f,l+k*i,l+k*(i+1),maxIteration,perscision);
            c=n-1;
           while(c ~= 0)
               if(abs(temp-str2double(result{c}))<.001)
                   break;
               end
               c=c-1;
           end
           if(c==0)
               result=cat(1,result,num2str(temp));
               n=n+1;
           end
        end
        i=i+1;
    end
 
 
 
 
 
end