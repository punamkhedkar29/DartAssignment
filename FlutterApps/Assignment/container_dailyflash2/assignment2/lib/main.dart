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
          child: Padding(
            padding: const EdgeInsets.all(45.0),
            child: Container(
              height: 100,
              width: 100,
              decoration:BoxDecoration(
                border: Border(left: BorderSide(color: Colors.red,width: 5, )),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.blue,
              ),
              child: const Text("Incubators",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400
              ),
              textAlign: TextAlign.center,
              ),
            ),
          )
        ),
      ),
    );
  }
}
