import 'package:flutter/material.dart';

class OrenjiEntryFormPage extends StatefulWidget {
  const OrenjiEntryFormPage({super.key});

  @override
  State<OrenjiEntryFormPage> createState() => _OrenjiEntryFormPageState();
}

class _OrenjiEntryFormPageState extends State<OrenjiEntryFormPage> {
  final _formKey = GlobalKey<FormState>();

  String _productName = '';
  int _price = 0;
  String _description = '';
  int _stock = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Produk Orenji'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nama Produk',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    _productName = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama produk tidak boleh kosong';
                  }
                  if (value.length > 255) {
                    return 'Nama produk maksimal 255 karakter';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),

              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Harga Produk',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _price = int.tryParse(value) ?? 0;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Harga produk tidak boleh kosong';
                  }
                  if (int.tryParse(value) == null || int.parse(value) < 0) {
                    return 'Harga produk harus berupa angka positif';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),

              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Deskripsi Produk',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
                onChanged: (value) {
                  setState(() {
                    _description = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Deskripsi produk tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),

              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Stok Produk',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _stock = int.tryParse(value) ?? 0;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Stok produk tidak boleh kosong';
                  }
                  if (int.tryParse(value) == null || int.parse(value) < 0) {
                    return 'Stok produk harus berupa angka positif';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),

              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Produk Tersimpan'),
                            content: Text(
                              'Nama: $_productName\nHarga: $_price\nDeskripsi: $_description\nStok: $_stock',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
