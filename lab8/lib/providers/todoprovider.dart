import 'package:flutter/material.dart';

class TodoProvider with ChangeNotifier {
  List<String> todos = [];

  List<String> get() => todos;

  void addtodo(String todo) {
    todos.add(todo);
    notifyListeners();
  }

  void remove(index) {
    todos.removeAt(index);
    notifyListeners();
  }
}
