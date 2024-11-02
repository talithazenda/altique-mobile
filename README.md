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


