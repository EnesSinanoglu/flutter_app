import 'package:flutter/material.dart';

class YardimScreen extends StatelessWidget {
  const YardimScreen({super.key});

  final List<Map<String, String>> faq = const [
    {
      "question": "Yemek tariflerini nasıl bulabilirim?",
      "answer":
          "Ana sayfada bulunan yemekleri görüntüleyebilir veya kategorilerden seçim yapabilirsiniz."
    },
    {
      "question": "Hangi yemekleri denemeliyim?",
      "answer":
          "İtalyan, Meksika veya Japon mutfağından farklı yemekler deneyebilirsiniz."
    },
    {
      "question": "Tariflere nasıl yorum yapabilirim?",
      "answer":
          "Her yemek tarifinin alt kısmında yorum yapabileceğiniz bir alan bulunmaktadır."
    },
    {
      "question": "Uygulamanın dili değiştirilebilir mi?",
      "answer": "Evet, ayarlar menüsünden uygulama dilini değiştirebilirsiniz."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yardım'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: faq.length,
        itemBuilder: (context, index) {
          final item = faq[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ExpansionTile(
              title: Text(item["question"]!,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(item["answer"]!,
                      style: const TextStyle(fontSize: 16)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
