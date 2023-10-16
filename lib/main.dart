import 'package:code_qr_app/form_widg.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CodeQRApp());
}

class CodeQRApp extends StatelessWidget {
  const CodeQRApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('QR APP'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: const FormWidg(),
    ));
  }
}
