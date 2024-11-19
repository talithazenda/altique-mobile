import 'dart:convert';

// Fungsi untuk mengonversi JSON menjadi List dari objek ItemBarang
List<ItemBarang> itemBarangFromJson(String str) => List<ItemBarang>.from(json.decode(str).map((x) => ItemBarang.fromJson(x)));

// Fungsi untuk mengonversi List dari objek ItemBarang menjadi JSON
String itemBarangToJson(List<ItemBarang> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ItemBarang {
  String model;
  String pk;
  Fields fields;

  ItemBarang({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory ItemBarang.fromJson(Map<String, dynamic> json) => ItemBarang(
    model: json["model"],
    pk: json["pk"],
    fields: Fields.fromJson(json["fields"]),
  );

  Map<String, dynamic> toJson() => {
    "model": model,
    "pk": pk,
    "fields": fields.toJson(),
  };
}

class Fields {
  String name;
  String description;
  int price;
  int stock;
  String category;

  Fields({
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.category,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
    name: json["name"],
    description: json["description"],
    price: json["price"],
    stock: json["stock"],
    category: json["category"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "description": description,
    "price": price,
    "stock": stock,
    "category": category,
  };
}
