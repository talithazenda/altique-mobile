import 'dart:convert';

ItemBarang itemBarangFromJson(String str) => ItemBarang.fromJson(json.decode(str));
String itemBarangToJson(ItemBarang data) => json.encode(data.toJson());

class ItemBarang {
  ItemBarang({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.category,
  });

  String id; // Gantilah menjadi int jika ID berbentuk angka
  String name;
  String description;
  int price;
  int stock;
  String category;

  factory ItemBarang.fromJson(Map<String, dynamic> json) => ItemBarang(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    price: json["price"],
    stock: json["stock"],
    category: json["category"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "price": price,
    "stock": stock,
    "category": category,
  };
}
