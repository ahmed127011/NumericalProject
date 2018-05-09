function [type,pointsNum,x,fx,query] = fileReader2( fileName )
fileID = fopen(fileName,'r');
txt = textscan(fileID,'%s','delimiter','\n');
type=str2double(txt{1}{1})
pointsNum=str2double(txt{1}{2})
x=num2cell(str2num(txt{1}{3}))
fx=num2cell(str2num(txt{1}{4}))
query=num2cell(str2num(txt{1}{5}))



end

