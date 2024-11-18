import 'package:flutter/material.dart';
import '../item_barang.dart';

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
