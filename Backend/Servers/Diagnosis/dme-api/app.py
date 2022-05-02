from flask import Flask, jsonify, request
import numpy as np
np.random.seed(2017)
from keras.applications.imagenet_utils import preprocess_input
from keras.models import Model
from keras.preprocessing import image
import tensorflow as tf
from tensorflow.keras.layers import Dense
from tensorflow.keras.optimizers import Adam
from tensorflow.keras.models import Model
from PIL import Image

app = Flask(__name__)


@app.route('/hello',methods=['GET','POST'])
def hello():
    return "Hello World"

@app.route('/diagnosis/dme-api', methods = ['GET', 'POST'])
def dme_diagnosis():
    if request.method == 'POST':    
        dict={0:'Glaucoma_Positive',1:'Macular_Edema',2:'Normal',3:'dr_Mild',4:'dr_Moderate',5:'dr_Proliferate',6:'dr_Severe'}
        model_1=("./model.h5")
        mobile = tf.keras.applications.mobilenet.MobileNet()
        x = mobile.layers[-6].output
        GVP =  tf.keras.layers.GlobalAveragePooling2D()(x)
        output = Dense(units=7, activation='softmax')(GVP)
        model_1 = Model(inputs=mobile.input, outputs=output)
        model_2 = Model(inputs=mobile.input, outputs=output)
        for layer in model_1.layers[:-23]:
            layer.trainable = False
        for layer in model_2.layers[:-23]:
            layer.trainable = False
        model_1.compile(optimizer=Adam(learning_rate=0.0003), loss='categorical_crossentropy', metrics=['accuracy'])
        model_1.load_weights("./model.h5")
        img = Image.open(request.files['file'].stream)
        sample = img.resize((224,224), Image.NEAREST)     
        x = image.img_to_array(sample)
        x = np.expand_dims(x, axis=0)
        x = preprocess_input(x)

        x = tf.keras.applications.mobilenet.preprocess_input(x)
        pr=model_1.predict(x)
        pr1=np.argmax(pr)

        result=""
        if dict[pr1] == ("Glaucoma_Positive"):
            result = "Glaucoma_Positive"
        elif dict[pr1] ==("Macular_Edema"):
            result = "Macular_Edema"
        else:
            result = "No Disease"


        return jsonify(
          result = result 
        )
    return None 

if __name__ == '__main__':
  app.run(debug=False)
