%ImgPath = strcat(str, file(ii).name);
Img = imread('F:\\acess_ieee\\nyu2-exp\\noise\\723-inputs.png');  
noise=imnoise(Img,'gaussian',0.1,0.04);%¸ßË¹°×ÔëÉù
dest_path='F:\\acess_ieee\\nyu2-exp\\noise\\723-0.04.png';
    %save(dest_path)
g = medfilt2(Img) 
imwrite(noise,dest_path)