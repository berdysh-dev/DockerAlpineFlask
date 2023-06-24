from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello Flask'

app.run(debug=False, host="0.0.0.0", port=8002)
