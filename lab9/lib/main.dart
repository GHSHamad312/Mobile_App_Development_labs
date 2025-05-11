import 'package:flutter/material.dart';
import 'package:lab9/providers/post_provider.dart';
import 'package:lab9/screens/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PostProvider(),
      child: MaterialApp(home: Task()),
    ),
  );
}
