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
          body: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Usuario',
                        contentPadding: EdgeInsets.all(10.0)),
                  ),
                ],
              ))),
    );
  }
}
