import 'dart:convert';
import 'package:altique/item_barang.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListItemsPage extends StatefulWidget {
  const ListItemsPage({Key? key}) : super(key: key);

  @override
  _ListItemsPageState createState() => _ListItemsPageState();
}

class _ListItemsPageState extends State<ListItemsPage> {
  Future<List<ItemBarang>> fetchItems() async {
    final response = await http.get(Uri.parse('http://10.0.2.2/main/items/'));

    if (response.statusCode == 200) {
      final List<dynamic> json = jsonDecode(response.body);
      return json.map((item) => ItemBarang.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load items');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk'),
        backgroundColor: Colors.brown,
      ),
      body: FutureBuilder<List<ItemBarang>>(
        future: fetchItems(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Tidak ada data produk.'));
          } else {
            final items = snapshot.data!;
            return ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text('Rp ${item.price}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemDetailPage(item: item),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}

class ItemDetailPage extends StatelessWidget {
  final ItemBarang item;

  const ItemDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Harga: Rp ${item.price}'),
            const SizedBox(height: 8),
            Text('Deskripsi: ${item.description}'),
            const SizedBox(height: 8),
            Text('Stok: ${item.stock}'),
            const SizedBox(height: 8),
            Text('Kategori: ${item.category}'),
          ],
        ),
      ),
    );
  }
}
