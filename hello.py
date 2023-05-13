from flask import Flask

app = Flask(__name__)

@app.route('/hello')
def hello():
    return '<h1>Hello, World!</h1>'

@app.route('/hello/<name>/<int:idnum>')
def hello_you(name, idnum):
    return '<h1>Hello</h1><h3>' + name + ' ' + str(idnum) + '</h3>'

if __name__ == '__main__':
    Flask.run(app)