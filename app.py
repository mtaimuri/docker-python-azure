from flask import Flask
myapp = Flask(__name__)

@myapp.route("/")
def hello():
    return "Hello Flask, on Azure App Service for windows"
    
if __name__ == '__main__':
    myapp.run(debug=True, host='0.0.0.0')