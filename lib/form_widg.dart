import 'dart:typed_data';

import 'package:image/image.dart' as img;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FormWidg extends StatefulWidget {
  const FormWidg({Key? key}) : super(key: key);
  @override
  FormWidgState createState() => FormWidgState();
}

class FormWidgState extends State<FormWidg> {
  final TextEditingController _user = TextEditingController();
  img.Image? _image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (_image != null)
            Image.memory(Uint8List.fromList(img.encodeJpg(_image!))),
          Visibility(
              visible: _image == null,
              child: Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _user,
                        decoration: const InputDecoration(hintText: 'Usuario'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            String input = _user.text;
                            fetchQr(input);
                          },
                          child: const Text('Cargar img'))
                    ],
                  )))
        ],
      ),
    );
  }

  Future<void> fetchQr(String user) async {
    print(user);
    final response =
        await http.get(Uri.parse('http://127.0.0.1:8000/qr_generate/$user'));
    if (response.statusCode == 200) {
      final List<int> bytes = response.bodyBytes;
      setState(() {
        _image = img.decodeImage(Uint8List.fromList(bytes));
      });

      print(_image);
    } else {
      print(response.statusCode);
    }
  }
}
