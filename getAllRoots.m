function result = getAllRoots( f,lb,ub, maxIteration,perscision)

    i=lb;
    n=1;
    u=ub;
    result{1}=NaN;
    while i<=u &&n<50
        
        if(f(i)==0)
            result{n}=i;
            n=n+1;
            i=i+.1;
           continue; 
        end
       [str1,l,l2,temp]=Newton_Raphson(i,f,maxIteration,perscision);
       if(isnan(temp))
           q=1;
           while isnan(temp)&& i<u
           i=i+50*q;
           q=q+1;
           [str1,l,l2,temp]=Newton_Raphson(i,f,maxIteration,perscision);
           
           end
       end
       c=n-1;
       while(c ~= 0)
           if(abs(temp-result{c})<.001)
               break;
           end
           c=c-1;
       end
       if(c==0)
           result{n}=temp;
           n=n+1;
           i=temp+0.1;
       else

           i=i+(i-temp);
       end

    end
    
    l=result{1};
    [a1,a2,a,u]=Newton_Raphson(10000,f,maxIteration,perscision);
    if(isnan(u))
        u=ub;
    end
    i=1;
    k=.5;
    while(l+k*i<u)
        l+k*i
        if(f(l+k*i)==0)
            c=n-1;
            while(c ~= 0)
               if(abs(l+k*i-result{c})<.0001)
                   break;
               end
               c=c-1;
            end
           if(c==0)
               result{n}=l+k*i;
               n=n+1;
           end
           i=i+1;
           continue;
        end

        if(f(l+k*i)*f(l+k*(i+1))<0)
       [str1,l1,l2,temp]=myBisectionAlgorithm(f,l+k*i,l+k*(i+1),maxIteration,perscision);
        c=n-1;
       while(c ~= 0)
           if(abs(temp-result{c})<.001)
               break;
           end
           c=c-1;
       end
       if(c==0)
           result{n}=temp;
           n=n+1;
           i=temp+0.1;
       end
        end
        i=i+1;
    end
        
    
    
end

