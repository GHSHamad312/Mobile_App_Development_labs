import 'package:flutter/material.dart';

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Database()));
  }
}

class Database extends StatefulWidget {
  const Database({super.key});

  @override
  Databasestate createState() => Databasestate();
}

class Databasestate extends State<Database> {
  String? data;
  bool loading = true;

  Future<String> fetchdata() async {
    return Future.delayed(Duration(seconds: 1), () {
      return "data returned";
    });
  }

  Future loaddata() async {
    String res = await fetchdata();
    setState(() {
      data = res;
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: loading ? CircularProgressIndicator.adaptive() : Text(data!),
          ),
          ElevatedButton(
            onPressed: () {
              loaddata();
            },
            child: Text("load data"),
          ),
        ],
      ),
    );
  }
}
