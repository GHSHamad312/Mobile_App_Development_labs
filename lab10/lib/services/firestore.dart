import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lab10/models/post.dart';

class FirestoreService {
  final CollectionReference _posts = FirebaseFirestore.instance.collection(
    'posts',
  );

  Stream<List<Post>> getPosts() {
    return _posts.snapshots().map((snapshot) {
      return snapshot.docs
          .map(
            (doc) => Post.fromMap(doc.data() as Map<String, dynamic>, doc.id),
          )
          .toList();
    });
  }

  Future<void> addPost(Post post) {
    return _posts.add(post.toMap());
  }

  Future<void> updatePost(Post post) {
    return _posts.doc(post.id).update(post.toMap());
  }

  Future<void> deletePost(String id) {
    return _posts.doc(id).delete();
  }
}
