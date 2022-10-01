


function rgb_1=imProcess(src,des,num)
    address=getAddr(src,num);
    dest=getAddr(des,num);
    
    original_picture=imread(address);
    %图像显示
    % subplot(2,2,1);
    % imshow(original_picture);
    % title('原始图像的直方图')

    %分别读取R、G、B的值，1代表R，2代表G，3代表B
    %均为uinit8 数据类型
    image_r=original_picture(:,:,1);
    image_g=original_picture(:,:,2);
    image_b=original_picture(:,:,3);


    r=double(image_r);
    g=double(image_g);
    b=double(image_b);

    % R=zeros(size(r));
    % G=zeros(size(g));
    % B=zeros(size(b));


    %如果有优质代码可以学习，那么就很好了，自己想，太花时间了



     R=0.393*r+0.769*g+0.289*b;
     G=0.349*r+0.686*g+0.168*b;
     B=0.272*r+0.534*g+0.131*b;
    % G=[0.349,0.686,0.168]*[r;g;b];
    % B=[0.272,0.534,0.131]*[r;g;b];


    R=(R+r)/2;
    G=(G+g)/2;
    B=(B+b)/2;

    R=uint8(R);
    G=uint8(G);
    B=uint8(B);

    %组合变换后的图像
    rgb_1=cat(3,R,G,B);%利用变换后的各分量进行图像的组合

    %  imshow(rgb_1,[]);

    %存储命名格式
     imwrite(rgb_1,dest); 