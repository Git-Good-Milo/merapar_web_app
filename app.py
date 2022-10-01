from flask import Flask
from markupsafe import escape

app = Flask(__name__)


@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"


@app.route("/dynamic string/<name>")
def dyn_string(name):
    return f"<h1>The saved string is {escape(name)}</h1>"