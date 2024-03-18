class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({required this.id, required this.todoText, this.isDone = false});
  static List<ToDo> TodoList() {
    return [
      ToDo(id: '1', todoText: 'Exercise'),
      ToDo(id: '2', todoText: 'Drink Water'),
      ToDo(id: '3', todoText: 'Breakfast'),
      ToDo(id: '4', todoText: 'Project')
    ];
  }
}
