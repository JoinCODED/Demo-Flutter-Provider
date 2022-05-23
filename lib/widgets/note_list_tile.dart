import 'package:flutter/material.dart';
import 'package:flutter_notes_app_starter/models/note.dart';
import 'package:flutter_notes_app_starter/pages/note_page.dart';
import 'package:provider/provider.dart';
import '../providers/note_provider.dart';

class NoteListTile extends StatelessWidget {
  final Note note;

  const NoteListTile({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 3,
        child: ListTile(
          leading: Icon(
            Icons.sticky_note_2_outlined,
            color: Theme.of(context).primaryColor,
          ),
          title: Text("${note.title} "),
          trailing: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.red,
            ),
            onPressed: () {
              context.read<NoteProvider>().deleteNote(id: note.id);
            },
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return NotePage(
                    note: note,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
