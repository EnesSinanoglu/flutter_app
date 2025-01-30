import 'package:flutter/material.dart';

class YardimScreen extends StatelessWidget {
  const YardimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yardım'),
      ),
      body: const Center(
        child: Text('Yardım Sayfası İçeriği'),
      ),
    );
  }
}
