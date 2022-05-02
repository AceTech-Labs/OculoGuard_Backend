import numpy as np
np.random.seed(2017)

import os
import itertools
import shutil
import random

import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import backend as K
from tensorflow.keras.layers import Dense, Activation,Reshape, Dropout
from tensorflow.keras.optimizers import Adam
from tensorflow.keras.metrics import categorical_crossentropy
from tensorflow.keras.preprocessing.image import ImageDataGenerator
from tensorflow.keras.preprocessing import image
from tensorflow.keras.models import Model
from tensorflow.keras.applications import imagenet_utils
from tensorflow.keras.models import load_model

from sklearn.metrics import confusion_matrix
from sklearn.metrics import classification_report

import numpy as np
import pandas as pd 
from glob import glob
import shutil
import matplotlib.pyplot as plt
# %matplotlib inline
import matplotlib.pyplot as plt
# print(tf.__version__)
# import cv2

import os
import time
from keras.preprocessing import image
from keras.applications.imagenet_utils import preprocess_input
from keras.layers import Input
from keras.models import Model
from keras.models import load_model
import tkinter as tk
from tkinter import filedialog
dict={0:'DR',1:'Glaucoma_Positive',2:'Macular_Edema',3:'Normal'}
model_1=("C:/Users/Harrisagar/Desktop/FinalClassification/Final_Prediction/Model 02 New/models/model_final.h5")
mobile = tf.keras.applications.mobilenet.MobileNet()
# mobile.summary()
# print(len(mobile.layers))

x = mobile.layers[-6].output

GVP =  tf.keras.layers.GlobalAveragePooling2D()(x)
output = Dense(units=4, activation='softmax')(GVP)

model_1 = Model(inputs=mobile.input, outputs=output)

model_2 = Model(inputs=mobile.input, outputs=output)

for layer in model_1.layers[:-23]:
    layer.trainable = False

for layer in model_2.layers[:-23]:
    layer.trainable = False
    
# model_1.summary() 
# print(len(model_1.layers))

model_1.compile(optimizer=Adam(learning_rate=0.0003), loss='categorical_crossentropy', metrics=['accuracy'])
model_1.load_weights("C:/Users/Harrisagar/Desktop/FinalClassification/Final_Prediction/Model 02 New/models/model_final.h5")

# img_path="C:/Users/Harrisagar/Desktop/FinalClassification/Model/DME.jpg"
root = tk.Tk()
root.withdraw()
img_path = filedialog.askopenfilename()
img = image.load_img(img_path, target_size=(224, 224))
x = image.img_to_array(img)
x = np.expand_dims(x, axis=0)
x = preprocess_input(x)
# print('Input image shape:', x.shape)
x = tf.keras.applications.mobilenet.preprocess_input(x)
pr=model_1.predict(x)
pr1=np.argmax(pr)
# print('Result=',dict[pr1])

if dict[pr1] == ("DR"):
    print("DR Positive")
else:
    print("DR Negative")
