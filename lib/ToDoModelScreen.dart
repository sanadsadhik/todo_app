import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scoped_model/scoped_model.dart';

class ToDoModelScreen extends StatefulWidget {
  ToDoModelScreen({Key key}) : super(key: key);
  _ToDoModelScreenState createState() => _ToDoModelScreenState();
}

class _ToDoModelScreenState extends State<ToDoModelScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Material(
          child: _buildTextContainer(),
        )
      ],
    ));
  }

  Widget _buildTextContainer() {
    return Align(
        child: Container(
            child: Column(children: <Widget>[
      _textContainer(),
      _buttonContainer(),
    ])));
  }

  Widget _textContainer() {
    return TextField(
      decoration: InputDecoration(
          border: InputBorder.none, hintText: 'Enter a search term'),
    );
  }

  Widget _buttonContainer() {
    return FlatButton(
      onPressed: () {
        /*...*/
      },
      child: Text(
        "Add To",
      ),
    );
  }
}
