% clear all,clc;

% for i=1:800
%     display(i);
% end

%str1����ϳ������ַ���������addr; i����num����; str�ǵ�ַǰ׺
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
