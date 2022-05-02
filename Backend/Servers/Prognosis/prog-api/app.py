from flask import Flask 




app = Flask(__name__)




@app.route('/hello',methods=['GET','POST'])
def hello():
    return "Hello World"

@app.route('/Prognosis/dr-api', methods = ['GET', 'POST'])
def dr_prognosis():

        x=1 






        return jsonify(


        )

    return None     