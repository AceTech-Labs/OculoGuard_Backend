from flask import Flask, jsonify, request
import torch
import torch.nn as nn
from torchvision import transforms
from PIL import Image

app = Flask(__name__)

@app.route('/diagnosis/bone', methods = ['GET', 'POST'])
def bone_diagnosis():
    if request.method == 'POST':     #stuff inside this should be changed 
        model = torch.load('./bone-diagnosis.pt')           #
        image = Image.open(request.files['file'].stream)
        test_transforms = transforms.Compose(
          [
            transforms.CenterCrop(224),
            transforms.ToTensor()
          ]
        )

        input = test_transforms(image)
        input = input.view(1, 3, 224, 224)
        output = model(input)
        prediction = int(torch.max(output.data, 1)[1].numpy())

        return jsonify(
          result = 'No cancer tumor present' if prediction == 0 else 'A cancer tumor has been detected',
        )

    return None 

if __name__ == '__main__':
  app.run(debug=False)
