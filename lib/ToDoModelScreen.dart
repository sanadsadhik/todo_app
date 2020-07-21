import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model/scoped_model.dart';

class ToDoModelScreen extends StatefulWidget {
  ToDoModelScreen({Key key}) : super(key: key);
  _ToDoModelScreenState createState() => _ToDoModelScreenState();
}

class _ToDoModelScreenState extends State<ToDoModelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
      ),
      body: TextFormField(
        decoration: InputDecoration(labelText: 'Enter a Todo'),
      ),
    );
  }
}
