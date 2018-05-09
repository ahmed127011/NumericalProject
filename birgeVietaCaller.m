function [str_arr] = birgeVietaCaller(a,x0)
     format long
     %a =[-130 120 -2 -9 1];
     %rooti1=myBirgeVieta(a,-3);
     [rooti1,str1] = myBirgeVieta(a,x0);
     str_arr={str1};
     [rooti2,str] = myBirgeVieta(a,rooti1);
     str_arr = cat(1,str_arr,str);
     i = 1;
     while (rooti2-rooti1)>0.0001 && i<50
         rooti1=rooti2;
         [rooti2,str] = myBirgeVieta(a,rooti1);
         str_arr = cat(1,str_arr,str);
         i=i+1;
     end
end 