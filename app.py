from flask import Flask

app = Flask(__name__)

@app.route('/')
def entry_point():
    return 'Hello World 5!'

if __name__ == '__main__':
    app.run(host=0.0.0.0,port=8005)
