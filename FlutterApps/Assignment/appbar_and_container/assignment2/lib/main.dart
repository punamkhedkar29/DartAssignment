import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Incubators"),
          actions: const [
            Icon(Icons.shopping_cart),
            Icon(Icons.person)
          ],
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
