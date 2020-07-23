import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:todo_app/model/ToDoModel.dart';

class ToDoScreen extends StatelessWidget {
  ToDoModel model;
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ToDoModel>(
        builder: (context, child, todomodel) {
      this.context = context;
      this.model = todomodel;
      return Scaffold(
        appBar: AppBar(
          title: Text("ToDo App"),
        ),
        body: _buildMainContent(),
      );
    });
  }

  _buildMainContent() {
    return Column(children: <Widget>[
      _buildToDoEntry(),
      _buildToDoList(),
    ]);
  }

  _buildToDoEntry() {
    final todoTextController = TextEditingController();

    return Row(
      children: <Widget>[
        Flexible(
          child: TextField(
            controller: todoTextController,
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'Enter a ToDo'),
          ),
        ),
        FlatButton(
          onPressed: () {
            if (todoTextController.text.isNotEmpty) {
              model.addTodo(ToDo(todoTextController.text));
            }
            todoTextController.clear();
          },
          child: Text(
            "ADD TODO",
          ),
        )
      ],
    );
  }

  _buildToDoList() {
    return Expanded(
        child: SizedBox(
            height: 200.0,
            child: new ListView.builder(
              itemCount: model.todosCount,
              itemBuilder: (context, index) {
                return buildTodotext(model.todos[index]);
              },
            )));
  }

  buildTodotext(ToDo todo) {
    return Flexible(
      fit: FlexFit.tight,
      flex: 1,
      child: Text(
        todo.title,
      ),
    );
  }
}

// Widget displaySingleToDo(TodoModel model) {}
