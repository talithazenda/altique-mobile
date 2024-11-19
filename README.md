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

# TUGAS 9

1. Mengapa perlu membuat model untuk pengambilan atau pengiriman data JSON? Apakah akan terjadi error jika tidak membuat model terlebih dahulu?

    Model sangat penting dalam proses pengambilan atau pengiriman data JSON karena model berfungsi sebagai struktur atau cetak biru data yang akan digunakan dalam aplikasi. Dengan adanya model, kita dapat dengan mudah memetakan data JSON yang diterima dari server ke dalam objek yang dapat digunakan di aplikasi Flutter, dan sebaliknya. Jika tidak pakai model, proses parsing data JSON menjadi lebih kompleks dan rentan terhadap error karena kita harus menulis kode ekstra untuk menangani struktur data secara manual. Selain itu, jika struktur data berubah, kita harus menyesuaikan kode di banyak tempat. Dengan model, perubahan struktur data dapat ditangani dengan lebih efisien.

2. Jelaskan fungsi dari library http yang diimplementasikan dalam tugas ini?
    Tombol "Save" pada form tambah produk menggunakan metode POST untuk mengirim data ke server Django. Ketika pengguna menekan tombol "Save", Flutter akan membuat POST request ke endpoint Django untuk membuat produk baru.

3. Jelaskan fungsi dari CookieRequest dan alasan instance CookieRequest perlu dibagikan ke semua komponen di aplikasi Flutter
    CookieRequest adalah kelas yang digunakan untuk mengelola sesi autentikasi pengguna dengan menyimpan cookie yang diterima dari server setelah login. Fungsi utamanya yaitu:
    - Menyimpan cookie sesi sehingga pengguna tetap login meskipun aplikasi ditutup sementara.
    - Menyertakan cookie dalam setiap permintaan HTTP yang membutuhkan autentikasi.
    - Mempermudah pengelolaan status login pengguna di seluruh aplikasi.
    Instance CookieRequest perlu dibagikan ke semua komponen dalam aplikasi Flutter agar status autentikasi konsisten di seluruh aplikasi. Dengan membagikan instance yang sama, semua bagian aplikasi dapat mengetahui apakah pengguna sudah login atau belum, dan dapat mengakses atau mengubah data sesi sesuai kebutuhan.

4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter!
    - Input Data: Pengguna memasukkan data melalui antarmuka aplikasi Flutter, seperti formulir atau input teks.
    - Mengirim Data ke Server: Aplikasi menggunakan library http untuk mengirim data tersebut ke server Django melalui permintaan HTTP (biasanya POST).
    - Pemrosesan di Server: Server menerima permintaan, memproses data (misalnya menyimpan ke database), dan mengembalikan respon berupa data yang diperlukan atau pesan status.
    -Menerima Respon: Aplikasi Flutter menerima respon dari server.
    - Memparsing Data: Data yang diterima (biasanya dalam format JSON) diparsing dan diubah menjadi objek model yang telah didefinisikan.
    - Menampilkan Data: Data yang telah diparsing kemudian ditampilkan pada antarmuka pengguna di aplikasi Flutter.

 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter!
    - Register :
        1. Pengguna mengisi formulir registrasi di Flutter.
        2. Aplikasi mengirim data ke server Django melalui permintaan POST.
        3. Django memvalidasi dan menyimpan data pengguna baru ke database.
        4. Server mengirim respon sukses atau pesan error ke Flutter.
        5. Aplikasi menampilkan pesan sesuai respon.
    
    - Login :
        1. Pengguna memasukkan kredensial login di Flutter.
        2. Aplikasi mengirim data ke server Django melalui permintaan POST.
        3. Django memverifikasi kredensial.
        4. Jika valid, Django mengirim cookie sesi dalam respon.
        5. CookieRequest menyimpan cookie tersebut.
        6. Aplikasi mengarahkan pengguna ke menu utama.

    - Autentikasi selama sesi :
        1. Setiap permintaan ke server menyertakan cookie sesi.
        2. Django memeriksa cookie untuk mengotentikasi pengguna.
        3. Jika valid, permintaan diproses; jika tidak, pengguna diminta login lagi.

    - Logout :
        1. Pengguna memilih opsi logout di Flutter.
        2. Aplikasi mengirim permintaan logout ke server.
        3. Django menghapus sesi pengguna.
        4. CookieRequest menghapus cookie sesi.
        5. Aplikasi mengarahkan pengguna kembali ke halaman login.

6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)!

- Memastikan jika django sudah benar di lokal
- Saya mulai mengimplementasikan fitur registrasi akun. Saya membuat halaman registrasi (RegisterPage) yang berisi form di mana pengguna dapat memasukkan username, password, dan konfirmasi password. 
- Saya menggunakan paket http untuk mengirim data ini sebagai POST request ke endpoint registrasi Django yang sudah disiapkan. Endpoint tersebut memproses data dan mengembalikan respons, yang kemudian saya gunakan di Flutter untuk mengarahkan pengguna ke halaman login jika registrasi berhasil, atau menampilkan pesan kesalahan jika terjadi kegagalan.
- Selanjutnya, saya membuat halaman login di aplikasi Flutter. Halaman ini berfungsi menerima username dan password dari pengguna, yang kemudian dikirim sebagai request POST ke endpoint login di Django (/auth/login/). Jika login berhasil, saya menyimpan session cookie yang diberikan untuk digunakan dalam berkomunikasi dengan endpoint lainnya. Jika login gagal, maka aplikasi akan menampilkan pesan kesalahan.
- Untuk mengintegrasikan sistem autentikasi Django dengan Flutter, saya menggunakan cookie session yang didapatkan dari Django setelah login berhasil. Cookie ini memungkinkan Flutter untuk melakukan request ke endpoint yang memerlukan autentikasi tanpa harus login kembali setiap kali melakukan request. 
- Saya juga membuat endpoint logout di Django (/auth/logout/) yang akan digunakan untuk mengakhiri sesi pengguna ketika mereka memilih untuk logout dari aplikasi Flutter.
- Saya kemudian membuat model kustom di Django yang sesuai dengan kebutuhan aplikasi, yaitu model ItemBarang yang berfungsi untuk menyimpan informasi produk seperti name, price, description, stock, category, dll. Model ini dihubungkan dengan User menggunakan ForeignKey sehingga setiap pengguna hanya dapat melihat atau mengelola item yang mereka miliki. Setelah membuat model ini, saya menjalankan migrasi untuk memastikan database memiliki struktur yang sesuai.
- Setelah model selesai dibuat, saya mengimplementasikan endpoint JSON yang dapat mengembalikan seluruh data item dalam bentuk JSON (/json/). Endpoint ini dapat digunakan oleh aplikasi Flutter untuk mendapatkan daftar item yang sudah dibuat. 
- Saya kemudian membuat halaman ItemEntryPage di Flutter yang menggunakan FutureBuilder untuk mendapatkan data dari endpoint JSON ini. Data yang didapatkan ditampilkan dalam bentuk list menggunakan ListView.builder. Setiap item dalam daftar memiliki tampilan yang estetis menggunakan widget custom yang bernama ItemCard.
- Untuk melengkapi halaman daftar item, saya juga menambahkan tombol detail pada setiap item. Tombol ini mengarahkan pengguna ke halaman detail (ItemDetailPage) di mana seluruh informasi lengkap mengenai item tersebut, seperti price, stock, dan category, dapat ditampilkan. Saya memastikan bahwa tampilan dari halaman ini selaras dengan halaman daftar item dengan desain yang menggunakan warna-warna estetis dan tema coklat yang seragam.
- Saya juga memperbaiki tampilan drawer navigasi (LeftDrawer) agar menggunakan warna coklat, sehingga tampilannya konsisten dengan seluruh aplikasi. Dalam drawer ini terdapat tombol untuk menuju halaman utama, halaman tambah produk, dan halaman daftar produk. 
- Saya mengubah masing-masing tombol agar memiliki warna berbeda, seperti donker untuk daftar produk, army untuk tambah produk, dan maroon untuk logout, sehingga pengguna dapat lebih mudah membedakan fungsi dari masing-masing tombol.
- Dalam proses ini, saya melakukan uji coba secara berkala, memastikan seluruh fitur berjalan dengan baik. Saat mengimplementasikan integrasi antara Django dan Flutter, saya sempat menemui kendala pada komunikasi dengan server. Oleh karena itu, saya menambahkan logging pada sisi Django dan Flutter untuk mengetahui request mana yang tidak berjalan dengan baik dan memperbaiki masalah tersebut, terutama dalam penanganan atribut yang tidak sesuai.

