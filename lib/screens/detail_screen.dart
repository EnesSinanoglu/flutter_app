// lib/screens/detail_screen.dart
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(imageUrl, height: 250, fit: BoxFit.cover),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(description),
          ),
        ],
      ),
    );
  }
}
