# coding=utf-8
# import cv2
# import numpy as np
#
# img = cv2.imread("./demo1.jpg", 0)
#
# img = cv2.GaussianBlur(img, (3, 3), 0)
# canny = cv2.Canny(img, 50, 150)
#
# # cv2.imshow('Canny', canny)
# cv2.imwrite('./demo1_candy.jpg',canny)
# cv2.waitKey(0)
# cv2.destroyAllWindows()


import cv2
import numpy as np

def CannyThreshold(lowThreshold):
    detected_edges = cv2.GaussianBlur(gray,(3,3),0)
    detected_edges = cv2.Canny(detected_edges,lowThreshold,lowThreshold*ratio,apertureSize = kernel_size)
    dst = cv2.bitwise_and(img,img,mask = detected_edges)  # just add some colours to edges from original image.
    cv2.imshow('canny demo',dst)

lowThreshold = 0
max_lowThreshold = 100
ratio = 3
kernel_size = 3

img = cv2.imread('./demo1.jpg')
gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)

cv2.namedWindow('canny demo')

cv2.createTrackbar('Min threshold','canny demo',lowThreshold, max_lowThreshold, CannyThreshold)

CannyThreshold(0)  # initialization
if cv2.waitKey(0) == 27:
    cv2.destroyAllWindows()