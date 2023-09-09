class ToDo {
  int? id;
  String? text;
  bool isDone;

  ToDo({
    required this.id,
    required this.text,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: 1 , text: 'Morning excersice', isDone: true),
      ToDo(id: 2, text: 'Buy oranges', ),
      ToDo(id: 3, text: 'Check emails', isDone: true),
      ToDo(id: 4, text: 'Scrum Daily Meeting', ),
      ToDo(id: 5, text: 'Work on mobile app', isDone: true),
      ToDo(id: 6, text: 'Make dinner', ),
    ];
  }
 }