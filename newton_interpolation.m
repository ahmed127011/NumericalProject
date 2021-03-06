function [root,func] = newton_interpolation(order,points,values,point)
x_array= cell2mat(points);
y_array=cell2mat(values);
num=numel(x_array);
order = order +1;
table = zeros (num,order);
b= zeros (num,1);

for i=1:1:num
    table(i,1)= x_array(i);
    table(i,2)=y_array(i);
end


for i=2:1:num
    for j=3:1:(order+1)
        if (i-(j-2)>0)
            table(i,j)= (table(i,j-1)-table(i-1,j-1))/(table(i,1)-table(i-(j-2),1));
        end
    end
end
table

i=1;
for j=2:1:(order+1)
    b(i,1)=table(j-1,j);
    i=i+1;
end

b

syms f(x);
syms g(x);

f(x)=0;
g(x)=1;

for i=1:1:num
    j=1;
    g(x)=1;
    while j~=i
        g(x)=g(x)*(x-table(j,1));
        j=j+1;
    end
    f(x)=f(x)+b(i,1)*g(x);
end
func=matlabFunction(f);
root=double(f(point));

end

