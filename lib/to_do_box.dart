import 'package:flutter/material.dart';
import 'package:to_do_app/Todo.dart';
import 'colors.dart';

class Todobox extends StatelessWidget {
  const Todobox(
      {super.key,
      required this.todo,
      required this.onTodoChanged,
      required this.onDeletetask});
  final ToDo todo;
  final onTodoChanged;
  final onDeletetask;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onTodoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Boxcolor,
        leading: todo.isDone
            ? const Icon(Icons.check_box, color: Colors.black)
            : const Icon(Icons.check_box_outline_blank, color: Colors.black),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: AccentColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: const Icon(Icons.delete),
            onPressed: () {
              onDeletetask(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
