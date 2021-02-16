import 'package:flutter/material.dart';
import 'package:oddeven_app/find/even.dart';
import 'package:oddeven_app/find/menu.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("OddEven App"),
        ),
        body: MenuScreen(),
      ),
    );
  }
}
