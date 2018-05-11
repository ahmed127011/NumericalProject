function [root,str] = myBirgeVieta(a,Xo)
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
    string_b = num2str(b(1));
    string_c = num2str(c(2));
    string_x_0 = num2str(Xo);
    string_x_1 = num2str(root);
    errString =  num2str(abs(root - Xo));
    str = ['b = ' string_b '  c =  ' string_c '  x_0 =  ' string_x_0  ' x_1 =  ' string_x_1 ' error = ' errString];
    
end