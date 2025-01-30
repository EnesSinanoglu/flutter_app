import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _selectedLanguage = 'Türkçe';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ayarlar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Hesap ayarları
            ListTile(
              title: const Text('Hesap Ayarları'),
              leading: const Icon(Icons.account_circle),
              onTap: () {
                // Hesap ayarları işlemleri yapılabilir
              },
            ),
            // Gizlilik ayarları
            ListTile(
              title: const Text('Gizlilik Ayarları'),
              leading: const Icon(Icons.security),
              onTap: () {
                // Gizlilik ayarları işlemleri yapılabilir
              },
            ),
            // Bildirim ayarları
            ListTile(
              title: const Text('Bildirim Ayarları'),
              leading: const Icon(Icons.notifications),
              onTap: () {
                // Bildirim ayarları işlemleri yapılabilir
              },
            ),
            // Dil seçeneği
            ListTile(
              title: const Text('Dil Seçimi'),
              leading: const Icon(Icons.language),
              trailing: DropdownButton<String>(
                value: _selectedLanguage,
                items: const [
                  DropdownMenuItem(
                    value: 'Türkçe',
                    child: Text('Türkçe'),
                  ),
                  DropdownMenuItem(
                    value: 'English',
                    child: Text('English'),
                  ),
                  // Buraya başka diller ekleyebilirsiniz
                ],
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedLanguage = newValue!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
