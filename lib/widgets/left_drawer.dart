import 'package:flutter/material.dart';
import 'package:altique/screens/list_itementry.dart'; // Halaman untuk daftar item
import 'package:altique/screens/menu.dart';
import 'package:altique/screens/itementry_form.dart'; // Halaman form untuk tambah item

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff795548), // Warna coklat
            ),
            child: Column(
              children: [
                Text(
                  'Altique',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Kelola produk Anda dengan mudah!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          // Routing ke halaman utama
          ListTile(
            leading: const Icon(Icons.home_outlined, color: Color(0xff4E342E)),
            title: const Text(
              'Halaman Utama',
              style: TextStyle(
                color: Color(0xff4E342E), // Warna teks coklat tua
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
          ),
          // Routing ke halaman tambah item
          ListTile(
            leading: const Icon(Icons.add, color: Color(0xff4E342E)),
            title: const Text(
              'Tambah Produk',
              style: TextStyle(
                color: Color(0xff4E342E), // Warna teks coklat tua
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddItemFormPage(),
                ),
              );
            },
          ),
          // Routing ke halaman daftar item
          ListTile(
            leading: const Icon(Icons.list, color: Color(0xff4E342E)),
            title: const Text(
              'Daftar Produk',
              style: TextStyle(
                color: Color(0xff4E342E), // Warna teks coklat tua
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ItemEntryPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
