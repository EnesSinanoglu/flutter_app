import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String description;

  const DetailScreen({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  // ignore: library_private_types_in_public_api
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // Yorumları tutmak için bir liste
  final List<String> comments = [];
  final TextEditingController _commentController = TextEditingController();

  void _addComment() {
    if (_commentController.text.isNotEmpty) {
      setState(() {
        comments.add(_commentController.text);
        _commentController
            .clear(); // Yorum ekledikten sonra input kutusunu temizle
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Tarifin resmini göster
            Image.network(widget.imageUrl, height: 250, fit: BoxFit.cover),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(widget.description),
            ),
            const SizedBox(height: 20),

            // Yorumları göster
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Yorumlar',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Yorumların listeleneceği alan
            ListView.builder(
              shrinkWrap: true, // Bu, ListView'in scroll olmasını engeller
              physics: const NeverScrollableScrollPhysics(), // Scroll engelleme
              itemCount: comments.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(comments[index]),
                );
              },
            ),
            const SizedBox(height: 20),

            // Yorum ekleme alanı
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: _commentController,
                decoration: const InputDecoration(
                  hintText: 'Yorumunuzu yazın...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _addComment,
              child: const Text('Yorum Ekle'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
