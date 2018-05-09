function f =functionFromString(str) 
str=strcat('@(x)',str);
f = str2func(str);