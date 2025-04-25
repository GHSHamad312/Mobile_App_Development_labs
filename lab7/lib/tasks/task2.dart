import "dart:convert";

import "package:flutter/material.dart";
import "package:http/http.dart" as fetch;

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("Posts"))),
        body: Post(),
      ),
    );
  }
}

class Post extends StatefulWidget {
  const Post({super.key});
  @override
  Poststate createState() => Poststate();
}

class Poststate extends State<Post> {
  bool loading = true;
  Map<String, dynamic> post = {};

  Future<void> fetchpost() async {
    final data = await fetch.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts/2"),
    );
    if (data.statusCode == 200) {
      setState(() {
        post = jsonDecode(data.body);
        loading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchpost();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(146, 0, 174, 255),
        ),
        child:
            loading
                ? Center(child: CircularProgressIndicator.adaptive())
                : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(post["userId"].toString()),
                    ),
                    Text(
                      post["title"],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(post["body"]),
                    ),
                  ],
                ),
      ),
    );
  }
}
