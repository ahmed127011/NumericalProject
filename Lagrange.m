function [ corresponding ] = Lagrange(order,values,correspondings,query )
syms f(x)
syms g(x)
f(x) = 0;
iterator_1 = 1;
iterations = 0;
values = cell2mat(values);
correspondings = cell2mat(correspondings);
while iterations<(order+1)
    g(x) = double(correspondings(iterator_1))
    iterator_2 = 1 ;
    iterations_two = 1;
    while iterations_two<(order+1)
        if iterator_1 ~= iterator_2
            g(x) = g(x)*(x-values(iterator_2))/double((values(iterator_1)-values(iterator_2)))
            iterations_two = iterations_two +1
        end
        iterator_2 = iterator_2+1
        
    end
    f(x) = f(x)+g(x);
    iterator_1 = iterator_1+1
    iterations = iterations + 1
end
corresponding = double(f(query))
end

