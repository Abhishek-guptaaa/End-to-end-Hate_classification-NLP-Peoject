from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/', methods=["POST", "GET"])  # Corrected here

def home_page():
    if request.method == 'POST':
        return jsonify(message="Hello, this is the post request")
    else:
        return "Hello this is Abhishek Gupta"

if __name__ == "__main__":
    app.run(host="127.0.0.1", port=8080, debug=True)
