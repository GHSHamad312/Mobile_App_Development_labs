import 'package:flutter/material.dart';
import 'package:lab8/providers/todoprovider.dart';
import 'package:lab8/tasks/counterapp.dart';
import 'package:lab8/tasks/shopping.dart';
import 'package:lab8/tasks/todoapp.dart';
import 'package:provider/provider.dart';

// void main() {
//   runApp(CounterApp());    counter app
// }

// void main() {
//   runApp(
//     ChangeNotifierProvider(create: (_) => TodoProvider(), child: TodoApp()),  todo app
//   );
// }

void main() {
  runApp(Shopping()); //shopping app
}
