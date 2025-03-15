import "package:flutter/material.dart";

class Task1 extends StatelessWidget {
  const Task1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Image.network(
                "https://th.bing.com/th/id/OIP.iYRhbqsC8waGDw1chYGPvAHaEK?rs=1&pid=ImgDetMain",
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100, left: 30),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Icon(Icons.account_balance_rounded, size: 50),
                        Text("home"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Icon(Icons.location_city_outlined, size: 50),
                        Text("taxes"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Icon(Icons.more_horiz_outlined, size: 50),
                        Text("more"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Icon(Icons.money_outlined, size: 50),
                        Text("balance"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Icon(Icons.account_box_outlined, size: 50),
                        Text("account"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("hello");
              },
              child: Text("hello"),
            ),
          ],
        ),
      ),
    );
  }
}
