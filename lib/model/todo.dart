class ToDo {
  String? id;
  String? todoText;
  bool isDone;
  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });
  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Task1', isDone: true),
      ToDo(id: '02', todoText: 'Task2', isDone: true),
      ToDo(
        id: '03',
        todoText: 'Task3',
      ),
      ToDo(
        id: '04',
        todoText: 'Task4',
      ),
      ToDo(
        id: '05',
        todoText: 'Task5',
      ),
      ToDo(
        id: '06',
        todoText: 'Task6',
      ),
    ];
  }
}
