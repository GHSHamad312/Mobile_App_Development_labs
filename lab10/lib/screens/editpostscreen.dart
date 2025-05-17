import 'package:flutter/material.dart';
import 'package:lab10/models/post.dart';
import 'package:lab10/services/firestore.dart';

class EditPostScreen extends StatefulWidget {
  final Post post;
  EditPostScreen({required this.post});

  @override
  _EditPostScreenState createState() => _EditPostScreenState();
}

class _EditPostScreenState extends State<EditPostScreen> {
  late TextEditingController _titleCtrl;
  late TextEditingController _descCtrl;
  final FirestoreService _db = FirestoreService();

  @override
  void initState() {
    super.initState();
    _titleCtrl = TextEditingController(text: widget.post.title);
    _descCtrl = TextEditingController(text: widget.post.description);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Post')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            _buildField(_titleCtrl, 'Title'),
            SizedBox(height: 12),
            _buildField(_descCtrl, 'Description', maxLines: 3),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: Text('Update'),
                onPressed: () async {
                  final updated = Post(
                    id: widget.post.id,
                    title: _titleCtrl.text.trim(),
                    description: _descCtrl.text.trim(),
                    imageUrl: widget.post.imageUrl,
                  );
                  await _db.updatePost(updated);
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
