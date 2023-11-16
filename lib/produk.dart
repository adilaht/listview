import 'package:flutter/material.dart';
import './data.dart';

class produkUtama extends StatelessWidget {
  final List _barang = [
    'Minyak Goreng 1L',
    'Minyak Goreng 2L',
    'Gula Kemasan 1Kg',
    'Kecap Bango 520ml',
    'Indomie Goreng 5pc',
    'Indomie Soto 5pc',
    'Indomie Kari 5pc',
    'Sunlight 600ml',
    'Mama Lemon 600ml',
    'Soklin  Liquid 500ml',
  ];

  final List _nomor = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

  final List _harga = [
    'harga: Rp 15000',
    'harga: Rp 30000',
    'harga: Rp 15000',
    'harga: Rp 20000',
    'harga: Rp 18000',
    'harga: Rp 17000',
    'harga: Rp 17000',
    'harga: Rp 12000',
    'harga: Rp 10000',
    'harga: Rp 11000',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: Offset(0, 3))
                ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text('Filter Produk'),
                        Text('                                              ')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.close))
                      ],
                    )
                  ],
                )),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            'List Produk',
            style: TextStyle(color: Colors.black),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red[100],
          child: const Icon(Icons.add),
        ),
        body: ListView.builder(
            itemCount: _barang.length,
            itemBuilder: (context, index) {
              return Barang(
                  nomor: _nomor[index],
                  barang: _barang[index],
                  harga: _harga[index]);
            }));
  }
}
