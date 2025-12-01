class NectarModel {
    List<Product> products;

    NectarModel({
        required this.products,
    });

    factory NectarModel.fromJson(Map<String, dynamic> json) => NectarModel(
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
    };
}

class Product {
    String name;
    String quantity;
    double price;
    List<String> images;

    Product({
        required this.name,
        required this.quantity,
        required this.price,
        required this.images,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        name: json["name"],
        quantity: json["quantity"],
        price: json["price"]?.toDouble(),
        images: List<String>.from(json["images"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "quantity": quantity,
        "price": price,
        "images": List<dynamic>.from(images.map((x) => x)),
    };
}
