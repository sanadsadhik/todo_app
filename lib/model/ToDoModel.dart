import 'package:scoped_model/scoped_model.dart';
import 'package:uuid/uuid.dart';

class ToDo {
  var _uuid = Uuid();
  String _title;
  String _id;

  ToDo(this._title) {
    this._id = _uuid.v4().toString();
  }

  String get id => _id;
  String get title => _title;

  @override
  String toString() => "$title $id";
}

class ToDoModel extends Model {
  List<ToDo> _todosList = [];
  bool _displayToDo = false;

  List<ToDo> get todos => _todosList;

  int get todosCount => _todosList.length;
  get displayToDo => _displayToDo;

  void addTodo(ToDo todo, {int position = 0}) {
    _todosList.insert(position, todo);
    notifyListeners();
  }
}
