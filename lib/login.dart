import 'package:flutter/material.dart';
import './produk.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({super.key});
  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Form Login'),
        ),
        body: Form(
          key: formkey,
          child: Center(
            child: Container(
              width: 250,
              height: 250,
              child: Card(
                color: const Color.fromARGB(255, 142, 181, 202),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const Text("Silahkan Isi Data Anda"),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        controller: cUser,
                        decoration: InputDecoration(
                          labelText: 'User Name',
                          hintText: 'Input Username',
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'User tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        obscureText: true,
                        controller: cPass,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Input Password',
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            String tUser = 'admin';
                            String tPass = '123';
                            if (formkey.currentState!.validate()) {
                              if (cUser.text == tUser && cPass.text == tPass) {
                                //perintah
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => produkUtama(),
                                    ),
                                    (route) => false);
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text('Konfirmasi Login'),
                                        content: const Text(
                                            'User atau Password Salah'),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () {
                                              cUser.text = '';
                                              cPass.text = '';
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('OK'),
                                          )
                                        ],
                                      );
                                    });
                              }
                            }
                          },
                          child: const Text("Login"))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
