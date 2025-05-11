import 'package:flutter/material.dart';
import 'package:lab9/providers/post_provider.dart';
import 'package:provider/provider.dart';

Scaffold Postscreen(int index, BuildContext context) {
  final Users = Provider.of<PostProvider>(context);

  // ✅ Filter posts for selected user
  final userPosts = Users.posts.where((post) => post["id"] == index).toList();

  return Scaffold(
    appBar: AppBar(
      title: Center(child: Text("Posts by ${Users.users[index]["name"]}")),
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) {
            String inputtitle = "";
            String inputpost = "";
            return AlertDialog(
              title: Text("Create Post"),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                      onChanged: (value) {
                        inputtitle = value;
                      },
                      decoration: InputDecoration(
                        labelText: "Enter title",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      onChanged: (value) {
                        inputpost = value;
                      },
                      decoration: InputDecoration(
                        labelText: "Enter post",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Users.setPosts(index, inputpost, inputtitle);
                    Navigator.pop(context);
                  },
                  child: Text("Post"),
                ),
              ],
            );
          },
        );
      },
    ),
    body:
        userPosts.isEmpty
            ? Center(child: Text("No Posts", style: TextStyle(fontSize: 30)))
            : ListView.builder(
              itemCount: userPosts.length,
              itemBuilder: (BuildContext context, int i) {
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(137, 158, 158, 158),
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userPosts[i]["title"],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          userPosts[i]["content"],
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (_) {
                                    String inputtitle = "";
                                    String inputpost = "";
                                    return AlertDialog(
                                      title: Text("Edit Post"),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            TextField(
                                              onChanged: (value) {
                                                inputtitle = value;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Enter title",
                                                border: OutlineInputBorder(),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            TextField(
                                              onChanged: (value) {
                                                inputpost = value;
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Enter post",
                                                border: OutlineInputBorder(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      actions: [
                                        ElevatedButton(
                                          onPressed: () {
                                            Users.editPost(
                                              index,
                                              inputtitle,
                                              inputpost,
                                            );
                                            Navigator.pop(context);
                                          },
                                          child: Text("Save"),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              icon: Icon(Icons.edit),
                              label: Text("Edit"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                              ),
                            ),
                            SizedBox(width: 10),
                            ElevatedButton.icon(
                              onPressed: () {
                                Users.deletePost(index);
                              },
                              icon: Icon(Icons.delete),
                              label: Text("Delete"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
  );
}
