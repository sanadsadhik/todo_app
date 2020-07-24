import 'package:flutter/material.dart';
import 'package:todo_app/model/ToDoModel.dart';

import 'package:todo_app/model/ToDoModel.dart';

class SingleToDoScreen extends StatelessWidget {
  ToDo todo;
  SingleToDoScreen({Key key, @required this.todo}) : super(key: key);
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Todo"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(todo.title),
      ),
    );
  }
}
