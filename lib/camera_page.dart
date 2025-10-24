import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  bool _detecting = false;
  String _result = "Belum ada deteksi";

  void _simulateDetection() async {
    setState(() {
      _detecting = true;
      _result = "Mendeteksi...";
    });

    await Future.delayed(const Duration(seconds: 2));

    // Hasil simulasi
    setState(() {
      _detecting = false;
      _result = "Plastik PET (bisa didaur ulang jadi botol baru)";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.delete_outline, size: 100, color: Colors.grey[600]),
          const SizedBox(height: 20),
          Text(_result, textAlign: TextAlign.center),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            onPressed: _detecting ? null : _simulateDetection,
            icon: const Icon(Icons.camera_alt),
            label: const Text("Deteksi Sampah"),
          ),
        ],
      ),
    );
  }
}
