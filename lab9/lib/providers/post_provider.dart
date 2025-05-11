import 'package:flutter/material.dart';

class PostProvider with ChangeNotifier {
  List<Map<String, dynamic>> _users = [];
  List<Map<String, dynamic>> _posts = [];
  List<Map<String, dynamic>> get users => _users;
  List<Map<String, dynamic>> get posts => _posts;

  void setUsers(List<dynamic> l1) {
    _users = l1.cast<Map<String, dynamic>>();
    notifyListeners();
  }

  void setPosts(int index, String Post, String title) {
    _posts.add({"id": index, "title": title, "content": Post});
    notifyListeners();
  }

  void deletePost(int index) {
    _posts.removeAt(index);
    notifyListeners();
  }

  void editPost(int index, String title, String content) {
    _posts[index]["title"] = title;
    _posts[index]["content"] = content;
    notifyListeners();
  }
}
