import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  final List<Map<String, String>> _materials = const [
    {
      'title': 'Plastik PET',
      'desc': 'Plastik jenis ini bisa didaur ulang menjadi botol baru atau serat kain.',
    },
    {
      'title': 'Kertas',
      'desc': 'Gunakan kembali untuk catatan atau daur ulang jadi kertas daur ulang.',
    },
    {
      'title': 'Kaca',
      'desc': 'Bisa dilebur kembali untuk membuat botol atau kaca baru.',
    },
    {
      'title': 'Organik',
      'desc': 'Bisa dijadikan kompos alami untuk tanaman.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _materials.length,
      itemBuilder: (context, index) {
        final item = _materials[index];
        return Card(
          child: ListTile(
            leading: const Icon(Icons.eco, color: Colors.green),
            title: Text(item['title']!),
            subtitle: Text(item['desc']!),
          ),
        );
      },
    );
  }
}
