import 'package:flutter/material.dart';
import 'package:altique/models/item_entry.dart';
import 'list_itementry.dart'; // Import halaman daftar item

class ItemDetailPage extends StatelessWidget {
  final ItemBarang item;

  const ItemDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          item.fields.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xff795548), // Warna coklat
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 4,
            color: const Color(0xffD7CCC8), // Warna coklat muda agar serasi dengan Entry List
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.fields.name,
                    style: const TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4E342E),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Price: Rp ${item.fields.price}",
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff5D4037),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Stock: ${item.fields.stock}",
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff5D4037),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Category: ${item.fields.category}",
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff5D4037),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    item.fields.description,
                    style: const TextStyle(
                      fontSize: 18.0,
                      color: Color(0xff4E342E),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff8D6E63), // Warna coklat untuk tombol
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 12.0,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ItemEntryPage()),
                        );
                      },
                      child: const Text(
                        "Kembali ke Daftar Item",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
