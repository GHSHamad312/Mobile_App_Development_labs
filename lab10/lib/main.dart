import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lab10/screens/feedscreen.dart';
import 'package:lab10/themes/apptheme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SocialMediaApp());
}

class SocialMediaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InstaClone',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: FeedScreen(),
    );
  }
}
