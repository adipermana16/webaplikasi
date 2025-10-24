import 'package:flutter/material.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.bar_chart, size: 100, color: Colors.blueGrey),
          SizedBox(height: 20),
          Text("Statistik Deteksi Kamu"),
          SizedBox(height: 10),
          Text("Total deteksi: 12"),
          Text("Poin eco: 340"),
          Text("Peringkat global: #57"),
        ],
      ),
    );
  }
}
