import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            decoration:BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 117, 137, 253), width: 3),
              borderRadius: const BorderRadius.only(topRight: Radius.circular(20)),
              color: Color.fromARGB(255, 138, 154, 247),
            ),
            
          )
        ),
      ),
    );
  }
}
