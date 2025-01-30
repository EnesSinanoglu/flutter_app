import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ayarlar'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text('Hesap Ayarları'),
              leading: Icon(Icons.account_circle),
            ),
            ListTile(
              title: Text('Gizlilik Ayarları'),
              leading: Icon(Icons.security),
            ),
            ListTile(
              title: Text('Bildirim Ayarları'),
              leading: Icon(Icons.notifications),
            ),
            // Daha fazla ayar ekleyebilirsin
          ],
        ),
      ),
    );
  }
}
