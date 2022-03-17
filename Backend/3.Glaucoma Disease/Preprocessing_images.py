# This preprocessing includes four steps: removing backgroud, green channel, contrast enhancement,subtract patches. 

import csv
import os
import random
import shutil
import cv2
import numpy as np
from matplotlib import pyplot as plt

images = []
image_path = r'C:\Users\Harrisagar\Desktop\DME\Dataset' # Original file path here
destination_path = r'C:\Users\Harrisagar\Desktop\DME\Data_out' # Processed file path here


def preprocessing(dir,images):
    newDir = dir
    if os.path.isfile(dir):
        images.append(dir)

    elif os.path.isdir(dir):
        for s in os.listdir(dir):
            newDir = os.path.join(dir,s)
            preprocessing(newDir, images)
    return images

images = preprocessing(image_path, images)

num = len(images)
for i in range(num):
    # label = images[i].split('_')[1]
    temp = os.path.basename(images[i])
    temp1 = os.path.splitext(temp)[0]
    img = cv2.imread(images[i])
    edges = cv2.Canny(img, 100, 210)
    kernel = np.ones((95, 95), np.uint8)
    erosion = cv2.morphologyEx(edges, cv2.MORPH_CLOSE, kernel)

    contours, hierarchy = cv2.findContours(erosion, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
    cnt = contours[0]
    x, y, w, h = cv2.boundingRect(cnt)
    # img = cv2.rectangle(img, (x, y), (x + w, y + h), (0, 255, 0), 3)
    crop_img = img[y:y + h, x:x + w]
    # plt.subplot(1, 3, 1), plt.imshow(img, 'gray')
    # plt.subplot(1, 3, 2), plt.imshow(erosion, 'gray')
    # plt.subplot(1, 3, 3), plt.imshow(crop_img, 'gray')

    cv2.imwrite(destination_path+temp1+'.jpg', crop_img[:, :, 1])
