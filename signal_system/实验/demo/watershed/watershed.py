#coding=utf-8
from PIL import Image
from pylab import *
import cv2
import numpy as np
img = cv2.imread("/home/scs4450/demo/大作业/115拖网1蜂窝三角藻壳面观2－40.jpg")
gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
ret, thresh = cv2.threshold(gray,0,255,cv2.THRESH_BINARY_INV+cv2.THRESH_OTSU)
# thresh = cv2.imread(files)
# print(img.shape)
# thresh = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
kernel = np.ones((3, 3), np.uint8)
opening = cv2.morphologyEx(thresh, cv2.MORPH_OPEN, kernel, iterations=2)
sure_bg = cv2.dilate(opening, kernel, iterations=3)

    # Finding sure foreground area
dist_transform = cv2.distanceTransform(opening, cv2.DIST_L2, 5)
ret, sure_fg = cv2.threshold(dist_transform, 0.7 * dist_transform.max(), 255, 0)

    # Finding unknown region
sure_fg = np.uint8(sure_fg)
unknown = cv2.subtract(sure_bg, sure_fg)
ret, markers = cv2.connectedComponents(sure_fg)

    # Add one to all labels so that sure background is not 0, but 1
markers = markers + 1

    # Now, mark the region of unknown with zero
markers[unknown == 255] = 0
markers = cv2.watershed(img, markers)
img[markers == -1] = [255, 0, 0]
img_save = Image.fromarray(img, 'RGB')
img_save.save('demo_0.7.png')