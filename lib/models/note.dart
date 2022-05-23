class Note {
  final int id;
  final String title;
  final String body;
  Note({
    required this.id,
    required this.title,
    required this.body,
  });

  static List<Note> notes = [
    Note(
        id: 0,
        title: "Happy",
        body: "Very happy today with my progress in Flutter"),
    Note(
        id: 1,
        title: "Poem",
        body:
            "Do not go gentle into that good night,Old age should burn and rave at close of day;Rage, rage against the dying of the light."),
  ];
}
