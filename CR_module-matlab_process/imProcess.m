


function rgb_1=imProcess(src,des,num)
    address=getAddr(src,num);
    dest=getAddr(des,num);
    
    original_picture=imread(address);
    %ͼ����ʾ
    % subplot(2,2,1);
    % imshow(original_picture);
    % title('ԭʼͼ���ֱ��ͼ')

    %�ֱ��ȡR��G��B��ֵ��1����R��2����G��3����B
    %��Ϊuinit8 ��������
    image_r=original_picture(:,:,1);
    image_g=original_picture(:,:,2);
    image_b=original_picture(:,:,3);


    r=double(image_r);
    g=double(image_g);
    b=double(image_b);

    % R=zeros(size(r));
    % G=zeros(size(g));
    % B=zeros(size(b));


    %��������ʴ������ѧϰ����ô�ͺܺ��ˣ��Լ��룬̫��ʱ����



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

    %��ϱ任���ͼ��
    rgb_1=cat(3,R,G,B);%���ñ任��ĸ���������ͼ������

    %  imshow(rgb_1,[]);

    %�洢������ʽ
     imwrite(rgb_1,dest); 