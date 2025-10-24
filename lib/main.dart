import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const TrashLensApp());
}

class TrashLensApp extends StatelessWidget {
  const TrashLensApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TrashLens',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
