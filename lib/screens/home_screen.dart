import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/screens/detail_screen.dart';
import 'package:flutter_app/screens/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> recipes = const [
    {
      "image": "https://example.com/yemek1.jpg",
      "title": "Spaghetti Bolognese",
      "description": "Kıymalı, domates soslu klasik İtalyan makarnası."
    },
    {
      "image": "https://example.com/yemek2.jpg",
      "title": "Sushi",
      "description": "Geleneksel Japon suşi çeşitleri."
    },
    {
      "image": "https://example.com/yemek3.jpg",
      "title": "Tacos",
      "description": "Meksika mutfağının lezzetli taco tarifi."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 158, 255),
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.profile_circled),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.blue,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.person_circle,
                    size: 80,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Kullanıcı Adı',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.home),
              title: const Text('Ana Sayfa'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Ayarlar'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                final recipe = recipes[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          imageUrl: recipe["image"]!,
                          title: recipe["title"]!,
                          description: recipe["description"]!,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 4,
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            recipe["image"]!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            recipe["title"]!,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Keşfet',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.folder),
            label: 'Kategoriler',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.question_circle),
            label: 'Yardım',
          ),
        ],
        onTap: (index) {
          // Sekme navigasyon işlemleri buraya eklenebilir
        },
      ),
    );
  }
}
