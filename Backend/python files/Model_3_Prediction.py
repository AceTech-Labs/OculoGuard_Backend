import numpy as np
np.random.seed(2017)

import os
import time
from keras.preprocessing import image
from keras.applications.imagenet_utils import preprocess_input
from keras.layers import Input
from keras.models import Model
from keras.models import load_model
import tkinter as tk
from tkinter import filedialog

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
dict={0:'dr_Mild',1:'dr_Moderate',2:'dr_Proliferate',3:'dr_Severe'}
model_1=("C:/Users/Harrisagar/Desktop/FinalClassification/Final_Prediction/Model 03 New/models/model.h5")
mobile = tf.keras.applications.mobilenet.MobileNet()
# mobile.summary()
# print(len(mobile.layers))

x = mobile.layers[-6].output

GVP =  tf.keras.layers.GlobalAveragePooling2D()(x) 
output = Dense(units=512)(GVP)
output1 = tf.keras.layers.LeakyReLU(alpha=0.2)(output)
output2 = tf.keras.layers.Dropout(0.2)(output1)
output3 = Dense(units=256)(output2)
output4 = tf.keras.layers.LeakyReLU(alpha=0.2)(output3)
output5 = tf.keras.layers.Dropout(0.2)(output4)
output6 = Dense(units=100)(output5)
output7 = tf.keras.layers.LeakyReLU(alpha=0.2)(output6)
output_final = Dense(units=4, activation='softmax')(output7)

model_1 = Model(inputs=mobile.input, outputs=output_final)

model_2 = Model(inputs=mobile.input, outputs=output_final)

for layer in model_1.layers[:-23]:
    layer.trainable = False

for layer in model_2.layers[:-23]:
    layer.trainable = False
    
# model_1.summary() 
# print(len(model_1.layers))

model_1.compile(optimizer=Adam(learning_rate=0.0003), loss='categorical_crossentropy', metrics=['accuracy'])
model_1.load_weights("C:/Users/Harrisagar/Desktop/FinalClassification/Final_Prediction/Model 03 New/models/model.h5")

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

# pr
# sum(pr[0][-4:]/sum(pr[0][-4:]) * np.array([10,7,4,1]))

a=sum(pr[0][-4:] / sum(pr[0][-4:]) * np.array([10,7,4,1]))
# print('Result=',dict[pr1])
print("\n\nYears =","{:.2f}".format(a))
