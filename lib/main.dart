import 'package:flutter/material.dart';
import 'ToDoScreen.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:todo_app/model/ToDoModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ToDo App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ScopedModel(
          model: ToDoModel(),
          child: ToDoScreen(),
        ));
  }
}
