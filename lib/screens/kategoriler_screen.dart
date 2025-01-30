import 'package:flutter/material.dart';

class KategorilerScreen extends StatelessWidget {
  const KategorilerScreen({super.key});

  final List<String> categories = const [
    "İtalyan Yemekleri",
    "Meksika Yemekleri",
    "Japon Yemekleri",
    "Fransız Yemekleri",
    "Türk Yemekleri",
    "Asya Yemekleri",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kategoriler'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: ListTile(
              title:
                  Text(categories[index], style: const TextStyle(fontSize: 20)),
              leading: const Icon(Icons.category),
              onTap: () {
                // Kategoriye tıklandığında yapılacak işlemi buraya ekleyebilirsiniz.
                // Örneğin, kategoriye ait yemekleri listelemek için yeni bir sayfa açabilirsiniz.
              },
            ),
          );
        },
      ),
    );
  }
}
