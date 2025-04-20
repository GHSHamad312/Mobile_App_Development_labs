import "package:flutter/material.dart";

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: [
            for (int i = 0; i < 100; i++)
              Image.network("https://picsum.photos/id/${i * 2}/300/300"),
          ],
        ),
      ),
    );
  }
}
