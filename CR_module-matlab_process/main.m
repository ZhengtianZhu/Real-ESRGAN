clear all,clc;

address='D:\Download\DIV2K_train_HR\';
des='D:\Download\nDIV2K_train_HR\';
% i=3
% imProcess(address,des,i);

for i=1:800
%     display(i);
    
    
    %给出目录即可，Process会处理的
    imProcess(address,des,i);
   
end