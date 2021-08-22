import 'package:flutter/material.dart';
import 'package:flutter_notes_app_starter/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.yellow[600],
      ),
      home: HomePage(),
    );
  }
}
