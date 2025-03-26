from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello from Python Kubernetes App!"

@app.route('/curl-test')
def curl_test():
    os.system("curl -I https://www.google.com")
    return "Curl executed!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
