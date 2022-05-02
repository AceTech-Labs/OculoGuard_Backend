import re
from flask import Flask,jsonify,request 


app = Flask(__name__)

@app.route('/hello',methods=['GET','POST'])
def hello():
    return "Hello World"

@app.route('/diagnosis/dr-api', methods = ['GET', 'POST'])
def dme_diagnosis():
    if request.method == 'POST':





        return jsonify(
        
    )        


    return None 



if __name__ == '__main__':
  app.run(debug=False)    