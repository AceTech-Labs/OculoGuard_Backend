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

@app.route('/Prognosis/prog-api', methods = ['GET', 'POST'])
def dr_prognosis():
    if request.method == "POST":

        dict={0:'dr_Mild',1:'dr_Moderate',2:'dr_Proliferate',3:'dr_Severe'}
        model_1=("./model.h5")
        mobile = tf.keras.applications.mobilenet.MobileNet()


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
        a=sum(pr[0][-4:] / sum(pr[0][-4:]) * np.array([10,7,4,1]))

        result = "Years =""{:.2f}".format(a)

        






        return jsonify(
            result=result 


        )

    return None     

if __name__ == '__main__':
  app.run(debug=False)
