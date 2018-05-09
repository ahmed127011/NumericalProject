function [root] = myBirgeVieta(a,Xo)
x=numel(a);
[n,m]=size(a);
b= zeros(n,m);
c= zeros(n,m);

b(m)=a(m);
c(m)=a(m);


for i=x-1:-1:1
    b(i) = Xo*b(i+1)+a(i);
end
for i=x-1:-1:1
    c(i) = (Xo*c(1,i+1)+b(i));
end
root = Xo-(b(1)/c(2));
   
end