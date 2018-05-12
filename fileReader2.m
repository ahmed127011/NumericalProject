function [type1,pointsNum,x,fx,query] = fileReader2( fileName )
fileID = fopen(fileName,'r');
txt = textscan(fileID,'%s','delimiter','\n');
type=str2double(txt{1}{1});
switch type 
    case 1
        type1 = "Newton";
    case 2
        type1 = "Lagrange";
    otherwise    
end
pointsNum=str2double(txt{1}{2});
x1=num2cell(str2num(txt{1}{3}));
i=1;
[a,b]=size(x1);

x={};
while i<=b
    x= cat(1,x,x1{i});
    i=i+1;
end
x(1)
fx1=num2cell(str2num(txt{1}{4}))
[a,b]=size(fx1);
i=1;
fx={};
while i<=b
    fx= cat(1,fx,fx1{i});
    i=i+1;
end
fx


query1=num2cell(str2num(txt{1}{5}));
[a,b]=size(query1);

i=1;
query={};
while i<=b
    query= cat(1,query,query1{i});
    i=i+1;
end

%query=cell2mat(query)




end

