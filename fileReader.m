function [type, equation,startvalue,endvalue,tolerance,maxIterations] = fileReader( fileName )

fileID = fopen(fileName,'r');
txt = textscan(fileID,'%s','delimiter','\n'); 
type=str2double(txt{1}{1})
equation=txt{1}{2}
temp=regexprep(txt{1}{3},']','');
temp=regexprep(temp,'[','')
c = strsplit(temp)
startvalue=str2double(c{1})
endvalue=str2double(c{2})
tolerance=str2double(txt{1}{4})
maxIterations=str2double(txt{1}{5})
end

