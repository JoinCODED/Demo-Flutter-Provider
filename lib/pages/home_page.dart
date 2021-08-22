import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _titleTextEditingController =
      TextEditingController();

  final TextEditingController _bodyTextEditingController =
      TextEditingController();

  // TODO: #2 note list

  // TODO: #3 add note function

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Notes',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),

        // TODO: #1 Textfields
        body: Container(),
      ),
    );
  }
}
