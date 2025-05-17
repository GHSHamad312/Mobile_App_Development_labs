import 'package:flutter/material.dart';
import 'package:lab10/models/post.dart';
import 'package:lab10/services/firestore.dart';

class AddPostScreen extends StatefulWidget {
  @override
  _AddPostScreenState createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  final _titleCtrl = TextEditingController();
  final _descCtrl = TextEditingController();
  String? _imageUrl;
  final FirestoreService _db = FirestoreService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Post')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            _buildField(_titleCtrl, 'Title'),
            SizedBox(height: 12),
            _buildField(_descCtrl, 'Description', maxLines: 3),
            SizedBox(height: 12),
            ElevatedButton.icon(
              icon: Icon(Icons.image),
              label: Text('Add Image'),
              onPressed:
                  () => setState(() {
                    _imageUrl =
                        'https://picsum.photos/400?random=${DateTime.now().millisecondsSinceEpoch}';
                  }),
            ),
            if (_imageUrl != null) ...[
              SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  _imageUrl!,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ],
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: Text('Post'),
                onPressed: () async {
                  if (_titleCtrl.text.isEmpty ||
                      _descCtrl.text.isEmpty ||
                      _imageUrl == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Complete all fields.')),
                    );
                    return;
                  }
                  final post = Post(
                    id: '',
                    title: _titleCtrl.text.trim(),
                    description: _descCtrl.text.trim(),
                    imageUrl: _imageUrl!,
                  );
                  await _db.addPost(post);
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildField(
    TextEditingController ctrl,
    String label, {
    int maxLines = 1,
  }) {
    return TextField(
      controller: ctrl,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
