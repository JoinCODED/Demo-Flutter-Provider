import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../models/note.dart';
import '../providers/note_provider.dart';
import '../widgets/note_list_tile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    onPressed: () {
                      Provider.of<NoteProvider>(context, listen: false).addNote(
                          title: _titleTextEditingController.text,
                          body: _bodyTextEditingController.text);
                    },
                  ),
                ),
              ),
            ),
            ListView.builder(
              // #1
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              // ignore: sdk_version_constructor_tearoffs
              itemCount: context.watch<NoteProvider>().notes.length,
              itemBuilder: (BuildContext context, int index) {
                // #2
                return NoteListTile(
                  // ignore: sdk_version_constructor_tearoffs
                  note: context.watch<NoteProvider>().notes[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
