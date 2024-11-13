# Orenji

Nama: Faiz Assabil Firdaus  
NPM: 2306224354  
Kelas: PBP F  

## List of Contents
- [Tugas 7](#tugas-7)
  - [Stateless Widget vs Stateful Widget](#1-jelaskan-apa-yang-dimaksud-dengan-stateless-widget-dan-stateful-widget-dan-jelaskan-perbedaan-dari-keduanya)
  - [Widget yang Digunakan](#2-sebutkan-widget-apa-saja-yang-kamu-gunakan-pada-proyek-ini-dan-jelaskan-fungsinya)
  - [Fungsi setState()](#3-apa-fungsi-dari-setstate-jelaskan-variabel-apa-saja-yang-dapat-terdampak-dengan-fungsi-tersebut)
  - [const vs final](#4-jelaskan-perbedaan-antara-const-dengan-final)
  - [Implementasi Checklist](#5-jelaskan-bagaimana-cara-kamu-mengimplementasikan-checklist-checklist-di-atas)
- [Tugas 8](#tugas-8)
  - [Penggunaan const di Flutter](#1-apa-kegunaan-const-di-flutter-jelaskan-apa-keuntungan-ketika-menggunakan-const-pada-kode-flutter-kapan-sebaiknya-kita-menggunakan-const-dan-kapan-sebaiknya-tidak-digunakan)
  - [Column vs Row](#2-jelaskan-dan-bandingkan-penggunaan-column-dan-row-pada-flutter-berikan-contoh-implementasi-dari-masing-masing-layout-widget-ini)
  - [Elemen Input di Halaman Form](#3-sebutkan-apa-saja-elemen-input-yang-kamu-gunakan-pada-halaman-form-yang-kamu-buat-pada-tugas-kali-ini-apakah-terdapat-elemen-input-flutter-lain-yang-tidak-kamu-gunakan-pada-tugas-ini-jelaskan)
  - [Pengaturan Tema dalam Flutter](#4-bagaimana-cara-kamu-mengatur-tema-theme-dalam-aplikasi-flutter-agar-aplikasi-yang-dibuat-konsisten-apakah-kamu-mengimplementasikan-tema-pada-aplikasi-yang-kamu-buat)
  - [Navigasi dalam Aplikasi Flutter](#5-bagaimana-cara-kamu-menangani-navigasi-dalam-aplikasi-dengan-banyak-halaman-pada-flutter)
  - [Implementasi Checklist Tugas 8](#6-implementasi-checklist-tugas-8)

---

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

---

# Tugas 8

## 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

- **Kegunaan `const`**: `const` digunakan untuk mendeklarasikan nilai yang tidak akan pernah berubah selama runtime aplikasi dan sudah diketahui saat kompilasi.
  
- **Keuntungan menggunakan `const`**:
  - **Optimalisasi kinerja**: Flutter dapat mengoptimalkan widget yang bersifat konstan, sehingga aplikasi lebih cepat dan efisien.
  - **Penghematan memori**: `const` membuat Flutter tidak perlu membangun ulang widget tersebut saat terjadi perubahan state di aplikasi.
  
- **Kapan menggunakan `const`**: 
  - Gunakan `const` ketika nilai sudah diketahui pada compile-time dan tidak akan pernah berubah selama runtime.
  - Contohnya pada widget statis seperti teks, ikon, atau padding yang tidak dipengaruhi oleh interaksi pengguna atau state.
  
- **Kapan tidak menggunakan `const`**: 
  - Jangan gunakan `const` jika nilai akan diperbarui atau diubah pada runtime, seperti input dari pengguna atau tampilan yang berubah berdasarkan state.

## 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

- **Column**: Menyusun widget secara vertikal dari atas ke bawah. Biasanya digunakan ketika ingin menampilkan elemen-elemen yang tersusun secara berurutan dari atas ke bawah.

- **Row**: Menyusun widget secara horizontal dari kiri ke kanan. Cocok digunakan ketika elemen-elemen perlu ditampilkan berdampingan.

**Contoh Implementasi**:
```dart
// Column
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text('Widget 1'),
    Text('Widget 2'),
    Text('Widget 3'),
  ],
);

// Row
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Icon(Icons.home),
    Icon(Icons.star),
    Icon(Icons.settings),
  ],
);
```

## 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Pada tugas ini, elemen input yang saya gunakan adalah:
- **TextFormField**: Digunakan untuk mengumpulkan input berupa teks, seperti `product_name`, `price`, `description`, dan `stock`.

Elemen input lain yang tidak saya gunakan:
- **Checkbox**: Digunakan untuk memilih opsi boolean, misalnya “Setuju” atau “Tidak Setuju

”.
- **Radio**: Memungkinkan pengguna memilih satu opsi dari beberapa opsi yang tersedia.
- **Slider**: Berguna untuk memilih nilai dalam rentang tertentu, misalnya skala 1-100.
- **Switch**: Biasanya digunakan untuk memilih antara dua kondisi, seperti on/off atau true/false.

## 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Untuk mengatur tema dalam Flutter, saya menggunakan `ThemeData` di dalam widget `MaterialApp`. `ThemeData` memungkinkan pengaturan global untuk warna utama, warna sekunder, teks, dan ikon yang konsisten di seluruh aplikasi.

Saya mengimplementasikan tema pada aplikasi dengan menentukan warna utama menggunakan `primarySwatch` dan warna sekunder menggunakan `secondary`. Dengan ini, warna aplikasi tampak seragam di seluruh halaman.

```dart
MaterialApp(
  theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange)
        .copyWith(secondary: Colors.green),
    useMaterial3: true,
  ),
  home: MyHomePage(),
);
```

## 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Untuk menangani navigasi di aplikasi Flutter yang memiliki banyak halaman, saya menggunakan `Navigator.push` dan `Navigator.pushReplacement`:
- **`Navigator.push`**: Menambahkan halaman baru ke atas stack navigasi, memungkinkan pengguna kembali ke halaman sebelumnya dengan tombol back.
- **`Navigator.pushReplacement`**: Mengganti halaman saat ini dengan halaman baru, sehingga pengguna tidak bisa kembali ke halaman yang diganti.

Contoh penggunaan `Navigator.push`:
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => OrenjiEntryFormPage()),
);
```

Dengan menggunakan `Navigator`, aplikasi memiliki navigasi yang konsisten dan memudahkan perpindahan antar halaman. Drawer juga digunakan untuk mengakses halaman utama dan halaman tambah produk secara langsung.

## 6. Implementasi Checklist Tugas 8

1. **Membuat Halaman Baru - Formulir Tambah Item**  
   Saya membuat halaman `OrenjiEntryFormPage` untuk menampilkan formulir tambah item yang berisi elemen input `product_name`, `price`, dan `description` (sesuai model di Django).

2. **Memakai Minimal Tiga Elemen Input**  
   Formulir berisi tiga elemen input: `product_name` untuk nama produk, `price` untuk harga, dan `description` untuk deskripsi produk. Setiap elemen input divalidasi agar sesuai dengan tipe data dan aturan panjang karakter.

3. **Validasi Setiap Input**  
   - `product_name` divalidasi agar tidak kosong dan memiliki panjang maksimal 255 karakter.
   - `price` divalidasi agar berupa angka positif dan tidak boleh kosong.
   - `description` divalidasi agar tidak kosong dan memiliki panjang karakter yang sesuai.

4. **Navigasi ke Halaman Formulir Tambah Item**  
   Tombol “Tambah Produk” di halaman utama menggunakan `Navigator.push` untuk mengarahkan pengguna ke halaman `OrenjiEntryFormPage`.

5. **Menampilkan Data dalam Pop-up Setelah Tekan Save**  
   Saat pengguna menekan tombol “Save”, aplikasi akan menampilkan pop-up (dialog) berisi data yang diisi di formulir, menggunakan `AlertDialog`.

6. **Implementasi Drawer**  
   Drawer memiliki dua opsi: "Halaman Utama" dan "Tambah Produk".  
   - "Halaman Utama" mengarahkan pengguna kembali ke halaman utama dengan `Navigator.pushReplacement`.
   - "Tambah Produk" mengarahkan pengguna ke formulir tambah item. Drawer mempermudah akses ke halaman-halaman utama dalam aplikasi.