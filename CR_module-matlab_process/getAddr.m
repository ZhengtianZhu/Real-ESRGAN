% clear all,clc;

% for i=1:800
%     display(i);
% end

%str1是组合出来的字符串，就是addr; i即是num数字; str是地址前缀
function str1=getAddr(str,i)

% str='D:\Download\DIV2K_train_HR\'

 
    if i<10
        str1=sprintf('%s000%d.png',str,i);
    elseif (i<100&&i>=10)
        str1=sprintf('%s00%d.png',str,i);
    else (i>=100&&i<1000)
        str1=sprintf('%s0%d.png',str,i);
    end

% str1
% original_picture=imread(str1);
