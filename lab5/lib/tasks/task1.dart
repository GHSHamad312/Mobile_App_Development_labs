import "package:flutter/material.dart";
import "package:lab5/widgets/song.dart";

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [Icon(Icons.menu), Spacer(), Icon(Icons.search)],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
              child: Text(
                "Your Songs",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
            ),
            Wrap(
              children: [
                Song(name: "Paradise"),
                Song(name: "Let me go"),
                Song(name: "Mine all mine"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
