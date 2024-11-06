# Orenji

Nama: Faiz Assabil Firdaus  
NPM: 2306224354  
Kelas: PBP F  

# Tugas 7

## 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

- **Stateless Widget** adalah widget yang tidak berubah setelah dibangun. Artinya, widget ini tidak memiliki state atau keadaan yang dapat diperbarui atau diubah selama siklus hidupnya. Stateless widget cocok untuk menampilkan data statis seperti ikon atau teks tetap.

- **Stateful Widget** adalah widget yang memiliki state (keadaan) yang dapat berubah. Widget ini berguna ketika UI aplikasi perlu menyesuaikan diri berdasarkan interaksi pengguna atau perubahan data, seperti input teks atau penambahan item.

**Perbedaan utama:**  
  - *Stateless widget* digunakan untuk elemen statis, tidak dapat berubah selama runtime.
  - *Stateful widget* dapat berubah dinamis selama runtime dengan memanggil metode seperti `setState()` untuk memperbarui tampilan.

## 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

- **MaterialApp**: Widget utama untuk mengatur tema dan struktur aplikasi berbasis Material Design.
- **Scaffold**: Membuat struktur halaman dasar, termasuk AppBar dan Body.
- **AppBar**: Menampilkan bagian header aplikasi yang berisi judul.
- **Column** dan **Row**: Menyusun widget secara vertikal (Column) dan horizontal (Row).
- **Padding**: Memberikan jarak atau ruang di sekitar widget.
- **Text**: Menampilkan teks.
- **Icon**: Menampilkan ikon.
- **GridView.count**: Membuat tampilan grid untuk tombol.
- **Card**: Membuat komponen dalam bentuk kartu.
- **InkWell**: Menambahkan efek klik pada widget.
- **Snackbar**: Menampilkan pesan kecil di bagian bawah layar sebagai respons terhadap suatu aksi.

## 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

`setState()` adalah metode yang digunakan pada Stateful Widget untuk memberi tahu Flutter bahwa ada perubahan pada state dari widget tersebut, sehingga Flutter akan melakukan render ulang pada UI. Setiap variabel atau properti yang dibungkus di dalam `setState()` akan diperbarui atau terpengaruh saat fungsi tersebut dipanggil.

Pada proyek ini, kita tidak menggunakan `setState()` karena semua widget bersifat statis dan tidak ada data yang perlu diubah setelah UI ditampilkan.

## 4. Jelaskan perbedaan antara const dengan final.

- **`const`** adalah keyword yang digunakan untuk menyatakan nilai yang bersifat konstan dan harus sudah diketahui pada saat kompilasi. Objek `const` akan memiliki nilai yang tetap dan tidak akan berubah sepanjang aplikasi berjalan.

- **`final`** adalah keyword untuk menyatakan nilai yang tidak dapat diubah setelah diinisialisasi. Tidak seperti `const`, nilai `final` bisa ditentukan selama runtime, bukan hanya pada saat kompilasi.

**Perbedaan utama:** `const` digunakan untuk nilai yang sudah diketahui pada compile-time, sementara `final` bisa diinisialisasi pada runtime tetapi tetap tidak dapat diubah setelah itu.

## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

1. **Membuat proyek Flutter baru dengan tema E-Commerce**  
   Saya membuat proyek Flutter baru dengan nama **Orenji** untuk mengimplementasikan aplikasi ini.

2. **Membuat tiga tombol dengan ikon dan teks**  
   Saya membuat kelas `ItemHomepage` untuk mendefinisikan setiap item menu (tombol) dengan nama, ikon, dan warna yang berbeda. Kemudian saya menggunakan `GridView.count` untuk menampilkan tiga tombol dalam bentuk grid.

3. **Menerapkan warna berbeda pada setiap tombol**  
   Warna untuk setiap tombol diterapkan menggunakan property `color` pada objek `ItemHomepage`. Warna yang berbeda untuk setiap tombol diatur saat instansiasi.

4. **Menampilkan Snackbar dengan pesan tertentu**  
   Pada saat tombol ditekan, saya menggunakan `InkWell` dengan property `onTap` untuk memanggil `ScaffoldMessenger.of(context).showSnackBar()` dan menampilkan pesan Snackbar sesuai tombol yang ditekan.

