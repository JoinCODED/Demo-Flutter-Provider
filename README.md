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
      title: title,
      body: body,
    );
    setState(() {
      notes.insert(0, note);
    });
```
2. Try it to see if its working
3. Complete delete note function 
```dart
setState(() {
                      notes.removeAt(index);
                    });
```
4. Try it to see if its working 
5. 