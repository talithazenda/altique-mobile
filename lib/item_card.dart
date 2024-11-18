import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import '../menu.dart'; // Misalnya jika `ItemHomepage` didefinisikan di menu.dart
import '../add_item_page.dart'; // Sesuaikan path dengan lokasi file `add_item_page.dart`
import 'package:altique/screens/login.dart'; // Pastikan nama path benar

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () async {
          if (item.name == "Tambah Produk") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddItemPage()),
            );
          } else if (item.name == "Lihat Daftar Produk") {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
              );
          } else if (item.name == "Logout") {
            final request = context.read<CookieRequest>();
            final response = await request.logout('http://127.0.0.1:8000//auth/logout/');
            if (response['status']) {
              // ignore: use_build_context_synchronously
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(response['message'])),
              );
              Navigator.pushReplacement(
                // ignore: use_build_context_synchronously
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            }
          }
        },
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// GridView.count(
//   primary: true,
//   padding: const EdgeInsets.all(20),
//   crossAxisSpacing: 10,
//   mainAxisSpacing: 10,
//   crossAxisCount: 3,
//   shrinkWrap: true,
//   children: items.map((ItemHomepage item) {
//     return ItemCard(item);
//   }).toList(),
// ),
