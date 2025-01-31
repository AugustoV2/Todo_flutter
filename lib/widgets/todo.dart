class Todo {
  String? id;
  String? title;
  bool? isDone;

  Todo({
    required this.id,
    required this.title,
    this.isDone = false,
  });

  static List<Todo> todos() {
    return [
      Todo(
        id: '1',
        title: 'Buy Milk',
        isDone: false,
      ),
      Todo(
        id: '2',
        title: 'Buy Eggs',
        isDone: false,
      ),
      Todo(
        id: '3',
        title: 'Buy Bread',
        isDone: false,
      ),
      Todo(
        id: '4',
        title: 'paDIKK',
        isDone: false,
      ),
      Todo(
        id: '5',
        title: 'maIL',
        isDone: false,
      ),
      Todo(
        id: '6',
        title: 'Watch',
        isDone: false,
      )
    ];
  }
}
