from flask import Flask
app = Flask(__name__)

@app.route('/Flask/')
def hello_world():
    return 'Hello Flask'

if __name__ == "__main__":
    app.run(debug=False, host="0.0.0.0", port=8002)
