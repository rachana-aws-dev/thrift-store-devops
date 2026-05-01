from flask import Flask, jsonify, request

app = Flask(__name__)

products = []

@app.route("/")
def home():
    return "Thrift Store API Running!"

@app.route("/products", methods=["GET"])
def get_products():
    return jsonify(products)

@app.route("/products", methods=["POST"])
def add_product():
    data = request.json
    products.append(data)
    return {"message": "Product added!"}, 201

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)