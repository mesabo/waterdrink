class Product {
  String? id;
  String? name;
  String? price;
  String? category;
  String? enable;
  String? image;
  String? createdat;
  String? updateat;

  Product(
      {this.id,
      this.name,
      this.price,
      this.category,
      this.enable,
      this.image,
      this.createdat,
      this.updateat});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    category = json['category'];
    enable = json['enable'];
    image = json['image'];
    createdat = json['createdat'];
    updateat = json['updateat'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    data['category'] = category;
    data['enable'] = enable;
    data['image'] = image;
    data['createdat'] = createdat;
    data['updateat'] = updateat;
    return data;
  }
}
