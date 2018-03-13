# import cv2
# import numpy as np
#
# img = cv2.imread('./demo1.jpg')
# h = np.zeros((300,256,3))                                    # image to draw histogram
#
# bins = np.arange(256).reshape(256,1)                         # Number of bins, since 256 colors, we need 256 bins
# color = [ (255,0,0),(0,255,0),(0,0,255) ]
#
# for ch,col in enumerate(color):
#     hist_item = cv2.calcHist([img],[ch],None,[256],[0,256])  # Calculates the histogram
#     cv2.normalize(hist_item,hist_item,0,255,cv2.NORM_MINMAX) # Normalize the value to fall below 255, to fit in image 'h'
#     hist=np.int32(np.around(hist_item))
#     pts = np.column_stack((bins,hist))                       # stack bins and hist, ie [[0,h0],[1,h1]....,[255,h255]]
#     cv2.polylines(h,[pts],False,col)
#
# h=np.flipud(h)                                               # You will need to flip the image vertically
#
# # cv2.imshow('colorhist',h)
# cv2.imwrite("histogram.jpg",h)
# cv2.waitKey(0)
# cv2.destroyAllWindows()

import cv2
import numpy as np

img = cv2.imread('./demo1.jpg')

anchor = (-1, -1)
delta = 0
ddepth = -1

ind = 0

while (True):

    cv2.imshow('image', img)
    k = cv2.waitKey(500)

    if k == 27:
        break

    kernel_size = 3 + 2 * (ind % 5)  # trying for kernel sizes [3,5,7,9,11]
    kernel = np.ones((kernel_size, kernel_size), np.float32) / (kernel_size * kernel_size)

    cv2.filter2D(img, ddepth, kernel, img, anchor, delta, cv2.BORDER_DEFAULT)

    ind = ind + 1

cv2.destroyAllWindows()