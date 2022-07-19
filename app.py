# flask_web/app.py

from flask import Flask
from de_processor import DeProcessor

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hey, we have Flask in a Docker container!'

@app.route('/de/sentence')
def de_process_sentence():
    return DeProcessor.process_sentence("Ich bin Berliner.")


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
