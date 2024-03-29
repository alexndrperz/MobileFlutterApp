// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blue[50],
          appBar: AppBar(
            elevation: 20.0,
            leading: Icon(
              Icons.menu,
              color: Colors.white,
              size: 35,
            ),
            shadowColor: Colors.black,
            title: Text(
              "Sistem",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            centerTitle: false,
            backgroundColor: Colors.blue,
          ),
          body: ListView(
            children: [
              Container(
                height: 200,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                color: Colors.blue[400],
              ),
              Container(
                height: 200,
                color: Colors.blue[200],
              ),
              Container(
                height: 200,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                color: Colors.blue[400],
              ),
              Container(
                height: 200,
                color: Colors.blue[200],
              ),
              Container(
                height: 200,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                color: Colors.blue[400],
              ),
              Container(
                height: 200,
                color: Colors.blue[200],
              )
            ],
          )),
    );
  }
}
