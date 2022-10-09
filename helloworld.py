from flask import Flask, jsonify, request

app = Flask(__name__)


@app.route('/', methods=['GET'])
def helloWorld():
    if request.method == 'GET':
        return jsonify({"Caution": "Dinosaur Crossing!"})


if __name__ == "__main__":
    app.run(host='0.0.0.0')
