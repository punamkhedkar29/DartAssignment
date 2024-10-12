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
            height: 150,
            width: 300,
            padding: const EdgeInsets.all(20),
            decoration:BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 241, 144, 176)),
              borderRadius: const BorderRadius.only(topRight:Radius.circular(20), bottomLeft: Radius.circular(20)),
              color: Color.fromARGB(255, 246, 177, 200),
            ),
            child: const Text("Punam",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400
            ),
            ),
          )
        ),
      ),
    );
  }
}
