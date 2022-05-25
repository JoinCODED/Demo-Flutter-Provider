import 'package:flutter/material.dart';

import '../models/note.dart';
import '../widgets/note_list_tile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = Note.notes;

  void addNote(String title, String body) {
    //TODO 1: add note code
  }

  @override
  Widget build(BuildContext context) {
    final _titleTextEditingController = TextEditingController();
    final _bodyTextEditingController = TextEditingController();

    return Scaffold(
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
              // #2
              child: Card(
                elevation: 10,

                // #3
                child: ListTile(
                  title: Column(
                    children: [
                      // #4
                      TextField(
                        controller: _titleTextEditingController,
                        decoration: InputDecoration(
                          hintText: 'Title',
                          border: InputBorder.none,
                        ),
                      ),

                      // #5
                      TextField(
                        controller: _bodyTextEditingController,
                        decoration: InputDecoration(
                          hintText: 'Body',
                          border: InputBorder.none,
                        ),
                      ),
                    ],
                  ),

                  // #6
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
            ListView.builder(
              // #1
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: notes.length,
              itemBuilder: (BuildContext context, int index) {
                // #2
                return NoteListTile(
               
                  note: notes[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
