# flask_web/app.py

from flask import Flask, request
from de_processor import DeProcessor

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hey, we have Flask in a Docker container!'

@app.route('/de/sentence', methods=['PUT'])
def de_process_sentence():
    return DeProcessor.process_sentence(request.json)


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
