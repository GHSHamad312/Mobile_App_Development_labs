class Post {
  String id;
  String title;
  String description;
  String imageUrl;

  Post({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  factory Post.fromMap(Map<String, dynamic> data, String docId) {
    return Post(
      id: docId,
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      imageUrl: data['imageUrl'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {'title': title, 'description': description, 'imageUrl': imageUrl};
  }
}
