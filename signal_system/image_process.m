M=imread('5.jpg')         %��ȡMATLAB�е���Ϊcameraman��ͼ��   
subplot(3,3,1) 
imshow(M)                         %��ʾԭʼͼ��
title('original')
P1=imnoise(M,'gaussian',0.02)     %�����˹���� 
subplot(3,3,2) 
imshow(P1)                        %�����˹��������ʾͼ�� 
title('gaussian noise');
P2=imnoise(M,'salt & pepper',0.02) %���뽷������
subplot(3,3,3)
imshow(P2)                        %%���뽷����������ʾͼ��  
title('salt & pepper noise');
grayp1=rgb2gray(P1)
g=medfilt2(grayp1,[5,5])                       %�Ը�˹������ֵ�˲�
subplot(3,3,5)
imshow(g)
title('medfilter gaussian')
grayp2=rgb2gray(P2)
h=medfilt2(grayp2,[3,3])                       %�Խ���������ֵ�˲�
subplot(3,3,6)
imshow(h)
title('medfilter salt & pepper noise')
l=[1 1 1                               %�Ը�˹����������ֵ�˲�
   1 1 1 
   1 1 1]; 
l=l/9;                           
k=conv2(grayp1,l)                        
subplot(3,3,8)
imshow(k,[])
title('arithmeticfilter gaussian')
                                           %�Խ�������������ֵ�˲�
d=conv2(grayp2,l)                        
subplot(3,3,9)
imshow(d,[])
title('arithmeticfilter salt & pepper noise')