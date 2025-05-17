import 'package:flutter/material.dart';
import 'package:lab10/models/post.dart';
import 'package:lab10/screens/editpostscreen.dart';
import 'package:lab10/screens/postscreen.dart';
import 'package:lab10/services/firestore.dart';
import 'package:lab10/widgets/postwidget.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  final FirestoreService _db = FirestoreService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('InstaClone')),
      body: StreamBuilder<List<Post>>(
        stream: _db.getPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          final posts = snapshot.data ?? [];
          if (posts.isEmpty) {
            return Center(child: Text('No posts yet'));
          }
          return ListView.builder(
            itemCount: posts.length,
            itemBuilder:
                (ctx, i) => PostCard(
                  post: posts[i],
                  onEdit: () => _openEdit(posts[i]),
                  onDelete: () => _confirmDelete(posts[i].id),
                ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _openAdd,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  void _openAdd() async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => AddPostScreen()),
    );
  }

  void _openEdit(Post post) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => EditPostScreen(post: post)),
    );
  }

  void _confirmDelete(String id) {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: Text('Delete Post'),
            content: Text('Are you sure?'),
            actions: [
              TextButton(
                child: Text('No'),
                onPressed: () => Navigator.pop(context),
              ),
              TextButton(
                child: Text('Yes'),
                onPressed: () {
                  _db.deletePost(id);
                  Navigator.pop(context);
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Deleted')));
                },
              ),
            ],
          ),
    );
  }
}
