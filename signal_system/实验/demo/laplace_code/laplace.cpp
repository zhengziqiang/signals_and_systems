#include<iostream>
#include<opencv2/imgproc/imgproc.hpp>
#include<opencv2/highgui/highgui.hpp>
#include<opencv2/core/core.hpp>
#include<math.h>
#include<time.h>
using namespace cv;
using namespace std;
//#include<opencv2/highgui/highgui.hpp>
//#include</usr/local/include/opencv/cv.h>
///usr/local/include/opencv/cv.h
//using namespace cv;

//拉普拉斯锐化图像
IplImage *Laplacian_cx(IplImage *src){
    IplImage *dst = cvCreateImage(cvGetSize(src),IPL_DEPTH_8U,0);
    cvLaplace(src,dst);
    return dst;
}

int main(){
    IplImage * srcImage = cvLoadImage("./pic1.jpg",0);

    //窗口定义函数
    cvNamedWindow("源灰度图像",CV_WINDOW_AUTOSIZE);
    //显示源图像
    cvShowImage("源灰度图像",srcImage);

    //显示Laplace变换后的灰度图像
    cvNamedWindow("Laplacian变换后的灰度图像",CV_WINDOW_AUTOSIZE);
    cvShowImage("Laplacian变换后的灰度图像",Laplacian_cx(srcImage));

    // 等待60000 ms后窗口自动关闭  
    waitKey(60000);  

}
