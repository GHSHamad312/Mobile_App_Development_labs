import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lab9/providers/post_provider.dart';
import 'package:lab9/screens/post_screen.dart';
import 'package:provider/provider.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  TaskState createState() => TaskState();
}

class TaskState extends State<Task> {
  bool IsLoading = true;
  @override
  void initState() {
    super.initState();
    fetch();
  }

  void fetch() async {
    final Users = Provider.of<PostProvider>(context, listen: false);
    var res = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/users"),
    );
    if (res.statusCode == 200) {
      setState(() {
        IsLoading = false;
      });
      var fetched = json.decode(res.body);
      Users.setUsers(fetched);
    }
  }

  @override
  Widget build(BuildContext context) {
    final Users = Provider.of<PostProvider>(context);

    return Scaffold(
      body:
          IsLoading
              ? Center(child: CircularProgressIndicator())
              : GridView.builder(
                itemCount: Users.users.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            Users.users[index]["name"],
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 13.5,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            Users.users[index]["email"],
                            style: TextStyle(fontSize: 13.5),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => Postscreen(index, context),
                                ),
                              );
                            },
                            child: Text("View Posts"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
    );
  }
}
