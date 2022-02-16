import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import cv2
import os

plt.rcParams["axes.grid"] = False
plt.style.use('dark_background')

# Function for cropping of images
def crop(image_list, indir, outdir):
    for j in image_list:
        img = cv2.imread(indir + '\\'+ j)
        gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
        gray = np.asarray(gray)
        r, c  = gray.shape
        thresh = 5
        r1 = 0; c1 = 0; r2 = r; c2 = c

        for i in range(int(r/2), 0, -1):
            if np.mean(gray[i,:]) <= thresh:
                r1 = i
                break

        for i in range(int(c/2), 0, -1):
            if np.mean(gray[:,i]) <= thresh:
                c1 = i
                break

        for i in range(int(r/2), r, 1):
            if np.mean(gray[i,:]) <= thresh:
                r2 = i
                break

        for i in range(int(c/2), c, 1):
            if np.mean(gray[:,i]) <= thresh:
                c2 = i
                break

        crop = img[r1:r2,c1:c2]
        cv2.imwrite(os.path.join(outdir , j), crop)

crop(allimages, r'')

# Resizing of images
def resize(piclist, indir, outdir):
    for i in piclist:
        image = cv2.imread(indir + '\\'+ i)
        image_res = cv2.resize(image, (512, 512), interpolation = cv2.INTER_NEAREST)
        cv2.imwrite(os.path.join(outdir, i), image_res)
        
resize(allimages, r'')
