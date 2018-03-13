M=imread('5.jpg')         %读取MATLAB中的名为cameraman的图像   
subplot(3,3,1) 
imshow(M)                         %显示原始图像
title('original')
P1=imnoise(M,'gaussian',0.02)     %加入高斯躁声 
subplot(3,3,2) 
imshow(P1)                        %加入高斯躁声后显示图像 
title('gaussian noise');
P2=imnoise(M,'salt & pepper',0.02) %加入椒盐躁声
subplot(3,3,3)
imshow(P2)                        %%加入椒盐躁声后显示图像  
title('salt & pepper noise');
grayp1=rgb2gray(P1)
g=medfilt2(grayp1,[5,5])                       %对高斯躁声中值滤波
subplot(3,3,5)
imshow(g)
title('medfilter gaussian')
grayp2=rgb2gray(P2)
h=medfilt2(grayp2,[3,3])                       %对椒盐躁声中值滤波
subplot(3,3,6)
imshow(h)
title('medfilter salt & pepper noise')
l=[1 1 1                               %对高斯躁声算术均值滤波
   1 1 1 
   1 1 1]; 
l=l/9;                           
k=conv2(grayp1,l)                        
subplot(3,3,8)
imshow(k,[])
title('arithmeticfilter gaussian')
                                           %对椒盐躁声算术均值滤波
d=conv2(grayp2,l)                        
subplot(3,3,9)
imshow(d,[])
title('arithmeticfilter salt & pepper noise')