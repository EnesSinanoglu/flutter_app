import 'package:flutter/material.dart';

class KategorilerScreen extends StatelessWidget {
  const KategorilerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kategoriler'),
      ),
      body: const Center(
        child: Text('Kategoriler Sayfası İçeriği'),
      ),
    );
  }
}
