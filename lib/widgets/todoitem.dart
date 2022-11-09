// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../consts/colors.dart';
import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeletion;

  const ToDoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeletion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print("Clicked on to do item");
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        tileColor: Colors.white,
        leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: blue),
        // ignore: prefer_const_constructors
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: black,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(
            vertical: 12,
          ),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              print('clicked on delete icon');
              onDeletion(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
