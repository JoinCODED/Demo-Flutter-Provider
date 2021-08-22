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

  // TODO: #1 note list

  // TODO: #2 add note function

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Card(
                  elevation: 10,
                  child: ListTile(
                    title: Column(
                      children: [
                        TextField(
                          controller: _titleTextEditingController,
                          decoration: InputDecoration(
                            hintText: 'Title',
                            border: InputBorder.none,
                          ),
                        ),
                        TextField(
                          controller: _bodyTextEditingController,
                          decoration: InputDecoration(
                            hintText: 'Body',
                            border: InputBorder.none,
                          ),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      iconSize: 32,
                      icon: Icon(
                        Icons.add_box,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),

              // TODO: #3 Add ListView builder
            ],
          ),
        ),
      ),
    );
  }
}
