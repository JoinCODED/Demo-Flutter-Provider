import 'package:flutter/material.dart';
import 'package:flutter_notes_app_starter/pages/home_page.dart';
import 'package:flutter_notes_app_starter/providers/note_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => NoteProvider(), child: MyApp()));
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
