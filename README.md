# TUGAS 7

1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya!

- Stateless Widget adalah widget yang tidak punya keadaan (state) yang berubah-ubah. Jadi, setelah widget ini dirender, dia tidak akan berubah kecuali aplikasi di-restart atau direbuild.
- Stateful Widget adalah widget yang memiliki keadaan (state) yang bisa berubah-ubah selama aplikasi berjalan. Jadi, dapat terjafi interaksi dan perubahan pada tampilan atau data tanpa perlu merender ulang seluruh aplikasi. 
- Perbedaan tama dari keduanya adalah pada statenya.

2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya!
- Button, untuk menambahkan tombol yang bisa ditekan oleh user. Contoh  tombol “Submit” atau “Add Review”.
- Text, untuk menampilkan teks pada layar. Contoh judul atau deskripsi.
- Icon, untuk menampilkan ikon, seperti tanda “like” atau “star rating”.
- Container, untuk menaruh kotak fleksibel yang bisa diisi warna, margin, padding, dan digunakan untuk mengelompokkan widget lain.
- Image, untuk menampilkan gambar, misalnya foto makanan atau avatar user.

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut!
- Fungsi setState() dalam Stateful widget biasanya digunakan untuk memperbarui state widget tersebut. Jadi, saat setState() dipanggil, maka akan memberitahu framework bahwa ada perubahan yang perlu dirender ulang pada widget tertentu.
- variabel yang terdampak oleh setState() adalah variabel yang disimpan dalam kelas Stateful widget dan digunakan untuk menentukan tampilan. Misal, variabel yang menampung data jumlah item yang dipilih, 
variabel untuk mengontrol tampilan tertentu, dan variabel yang digunakan dalam perhitungan atau menampilkan hasil yang perlu diperbarui saat user melakukan interaksi.

4.  Jelaskan perbedaan antara const dengan final!
- const, digunakan untuk nilai yang bersifat konstan dan tidak akan pernah berubah sejak compile-time serta membuat objek menjadi immutable.
- final, digunakan untuk variabel yang nilainya hanya diinisialisasi sekali, tetapi nilainya bisa ditentukan pada runtime.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas!
- Saya memulai dengan membuat proyek Flutter baru menggunakan perintah flutter create altique_app.
- Mengatur struktur dasar aplikasi di main.dart dan membuat file menu.dart untuk halaman utama.
- Menyesuaikan tema aplikasi sesuai dengan aplikasi E-Commerce sebelumnya, yaitu "Altique".
- Membuat tiga tombol sederhana dengan ikon dan teks untuk melihat daftar produk (Lihat Daftar Produk), menambah produk (Tambah Produk), dan Logout (Logout).
- Membuat kelas ItemHomepage yang berisi properti name, icon, dan color.
- Menambahkan tiga objek ItemHomepage ke dalam list items dengan nama, ikon, dan warna yang sesuai.
- Menggunakan GridView.count untuk menampilkan tombol-tombol tersebut dalam bentuk grid.
- Menambahkan properti color pada kelas ItemHomepage untuk menentukan warna setiap tombol.
- Saat membangun ItemCard, warna latar belakang ditentukan oleh item.color.
- Pada widget ItemCard, saya menambahkan onTap pada InkWell untuk menangani aksi ketika tombol ditekan.
- Menggunakan ScaffoldMessenger untuk menampilkan SnackBar dengan pesan yang sesuai.
- Membuat widget InfoCard untuk menampilkan informasi NPM, Nama, dan Kelas.
- Menggunakan Row untuk menampilkan ketiga InfoCard secara horizontal.

# TUGAS 8

1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter! Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
    const digunakan di flutter bertujuan untuk menandai objek sebagai konstanta yang dapat dievaluasi pada waktu kompilasi. Sehingga  Flutter tidak perlu membuat ulang objek tersebut setiap kali aplikasi di-render ulang, karena objek sudah ada dan tetap sama di sepanjang waktu aplikasi berjalan. 
    Keuntungan dalam menggunakan const :
    - Efisiensi memori
    - Peningkatan performa
    - Optimasi build
    const sebaiknya tidak digunakan ketika widget atau objek perlu diubah-ubah berdasarkan interaksi pengguna atau perubahan state dan Untuk objek yang tergantung pada variabel atau parameter yang mungkin berubah.

2.  Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter! Berikan contoh implementasi dari masing-masing layout widget ini!
    - Column : Digunakan untuk menyusun widget secara vertikal. Semua widget di dalam Column akan diatur dalam satu kolom dari atas ke bawah.
    - Digunakan untuk menyusun widget secara horizontal. Semua widget di dalam Row akan diatur dalam satu baris dari kiri ke kanan.
    Contoh implementasinya adalah sebagai berikut :
    // Column example
    Column(
    children: <Widget>[
        Text('Item 1'),
        Text('Item 2'),
        ElevatedButton(onPressed: () {}, child: Text('Button')),
    ],
    );

    // Row example
    Row(
    children: <Widget>[
        Icon(Icons.home),
        Text('Home'),
        Icon(Icons.settings),
    ],
    );

3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini! Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
    Pada tugas ini saya menggunakan beberapa elemen input yaitu :
    - TextFormField, yang saya gunakan untuk input teks, di mana pengguna dapat memasukkan nama item yang akan ditambahkan.
    - Checkbox: Digunakan untuk opsi "ya" atau "tidak" dalam bentuk kotak centang.
    - Radio Button (Radio): Digunakan untuk memilih salah satu dari beberapa opsi.
    - Switch: Digunakan untuk mengaktifkan atau menonaktifkan fitur tertentu.
    - Dropdown Button (DropdownButton): Digunakan untuk memilih satu nilai dari beberapa opsi yang tersedia dalam bentuk dropdown.

4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
    Untuk mengatur tema dalam aplikasi Flutter agar konsisten, saya menggunakan ThemeData pada root widget (MaterialApp). 
    Pada file main.dart, saya menggunakan properti theme pada MaterialApp untuk mengatur tema aplikasi secara konsisten. Berikut code saya yang mengimplementasikan ThemeData:
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)
                .copyWith(secondary: Colors.deepPurple[400]),
            useMaterial3: true,
            ),

5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
    Untuk menangani navigasi dalam aplikasi Flutter yang memiliki banyak halaman, saya menggunakan Navigator. Saya menggunakan Navigator.push ketika saya ingin menambahkan halaman baru di atas halaman saat ini, sehingga pengguna dapat kembali ke halaman sebelumnya dengan tombol back. Pada tugas ini, saya menggunakan Navigator.push saat pengguna memilih tombol Tambah Produk pada halaman utama atau memilih opsi Tambah Item dari Drawer. 