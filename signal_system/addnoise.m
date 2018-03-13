str = '/media/vision/HD12T/zzq/mask-scale/data/cityall/color/';      %输入路径
strAll = '*.jpg';%输入图像格式设置
dest='/home/vision/dest-city/';
path = strcat(str, strAll);
file = dir(path);
for ii = 1 : length(file)

    ImgPath = strcat(str, file(ii).name);
    Img = imread(ImgPath);  
    noise=imnoise(Img,'gaussian',0.1,0.1);
    dest_path=strcat(dest,file(ii).name);
    %save(dest_path)
    imwrite(noise,dest_path)
    
end