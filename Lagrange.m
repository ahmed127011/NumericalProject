function [ corresponding,func ] = Lagrange(order,values,correspondings,query )

if order>=numel(values)
   error('order is larger than number of points');
end

syms f(x)
syms g(x)
f(x) = 0;

values = cell2mat(values);
correspondings = cell2mat(correspondings);

iterator_1 = 1;
index = 1;
while query>values(iterator_1)
    index = index+1;
    iterator_1 = iterator_1+1;
end
iterator_1 = index-order;
if iterator_1<1
    index= (1-iterator_1)+index;
    iterator_1 = 1;
end
iterations_1 = order+1;
iterations_2 = order;
counter_1 = 0;
counter_2 = 0;
while counter_1<iterations_1
    g(x) = double(correspondings(iterator_1));
    iterator_2 = index-order;
    counter_2 = 0;
    while counter_2<iterations_2
        if iterator_1 ~= iterator_2
            g(x) = g(x)*(x-values(iterator_2))/double((values(iterator_1)-values(iterator_2)));
            counter_2 = counter_2 +1;
        end
        iterator_2 = iterator_2+1;
        
    end
    f(x) = f(x)+g(x);
    iterator_1 = iterator_1+1;
    counter_1 = counter_1 + 1;
end
func = matlabFunction(f);
corresponding = double(f(query))
end

