import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FormWidg extends StatefulWidget {
  const FormWidg({Key? key}) : super(key: key);

  @override
  FormWidgState createState() => FormWidgState();
}

class FormWidgState extends State<FormWidg> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void fetchUsers() async {
    final apiUrl = Uri.parse('http://127.0.0.1:8000/users/1');

    try {
      final response = await http.get(apiUrl);

      if (response.statusCode == 200) {
        final responseData = response.body;
        print(responseData);
      } else {
        print("Error en API ${response.statusCode} ");
      }
    } catch (e) {
      print("Error: $e");
    }
  }
}
