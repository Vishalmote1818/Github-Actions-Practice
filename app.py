
# This code is written by me.
# Adding the comment to code.

from flask import Flask, render_template

app = Flask(__name__)


@app.route('/')
def hello_world():
    return render_template('index.html')


@app.route('/health')
def health():
    return 'Server is up and running'


# What is the goal of workflow?
# Goal: Whenever someone changes the Python code,
# the linter checks whether formatting and style are correct.
