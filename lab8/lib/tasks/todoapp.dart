import 'package:flutter/material.dart';
import 'package:lab8/screens/todoscreen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TodoScreen());
  }
}
