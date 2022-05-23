import 'package:flutter/material.dart';

import '../models/note.dart';

class NoteProvider extends ChangeNotifier {
  final List<Note> notes = Note.notes;

  void addNote({required String title, required String body}) {
    notes.add(Note(id: notes.length, body: body, title: title));
    notifyListeners();
  }

  void deleteNote({required int id}) {
    notes.removeWhere((note) => note.id == id);
    notifyListeners();
  }
}
