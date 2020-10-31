import platform
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "<h1><b>HelloWorld, i'm on <span style='color:#34558B;'>%s</span></b></h1>" % platform.uname()[4]

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)
