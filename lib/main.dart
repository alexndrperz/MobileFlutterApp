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
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Kevin es Gay '),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 174, 174, 174),
          ),
          body: const FormWidg(),
        ));
  }
}
