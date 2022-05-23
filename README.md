# Flutter Notes Provider

## What is this demo?
 In this demo we will demonstrate how to use Provider.
## What are the objectives?
 Students will learn about state manegment.

## Steps
1. First go through the app
2. In home_page complete the missing code to add note 
``` dart 
 var note = Note(
      id : notes.**length**
      title: title,
      body: body,
    );
    setState(() {
      notes.insert(0, note);
    });
```
3. Check the delete note function, we cant acess the same notes in home page! Hence we need provider so we can acess the state from the whole app
4. In pubspec.yaml add `provider: ^6.0.2`
5. Create a folder called providers and create a file called note_provider
6. Create class NoteProvider that extend ChangeNotifier
7. Create a list of notes form the static list 
8. to use this, go to main and change it to this
```dart
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => NoteProvider(),
      child: MyApp(),
    ),
  );
}
```
9. in HomPage comment add note and remove the list of note 
10. Anywhare you need the list of notes add this `Provider.of<NoteProvider>(context, listen: true);`
11. Now lets add the addNote function to the provider 
12. try it without the notifyListeners() then add it 