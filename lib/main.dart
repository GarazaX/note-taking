import 'package:flutter/material.dart';
import 'package:note_taking/screens/home_page.dart';
import 'package:note_taking/screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "SourceSerif"),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
