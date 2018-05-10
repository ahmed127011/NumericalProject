function [type, equation,startvalue,endvalue,tolerance,maxIterations] = fileReader( fileName )

fileID = fopen(fileName,'r');
txt = textscan(fileID,'%s','delimiter','\n'); 
typeNum=str2double(txt{1}{1});
switch typeNum
    case 1
        type = "Bisection";
    case 2
        type = "False-position";
    case 3
        type = "Fixed point";
    case 4
        type = "Newton-Raphson";
    case 5
        type = "Secant";
    case 6
        type = "Bierge Vieta";
    case 7
        type = "AllRoots"; 
    otherwise
        type ="";
end
equation=txt{1}{2};
temp=regexprep(txt{1}{3},']','');
temp=regexprep(temp,'[','');
c = strsplit(temp);
startvalue=str2double(c{1});
endvalue=str2double(c{2});
tolerance=str2double(txt{1}{4});
maxIterations=str2double(txt{1}{5});
end

