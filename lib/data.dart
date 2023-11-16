import 'package:flutter/material.dart';

class Barang extends StatelessWidget {
  final String barang;
  final String nomor;
  final String harga;

  Barang({required this.barang, required this.nomor, required this.harga});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3))
      ]),
      child: ListTile(
        trailing: const Icon(
          Icons.delete,
          color: Colors.red,
        ),
        title: Text(barang),
        subtitle: Text(harga),
        leading: Text(nomor),
      ),
    );
  }
}
