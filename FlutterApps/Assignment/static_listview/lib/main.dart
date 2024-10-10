import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("Device width: ${MediaQuery.of(context).size.width}");
    print("Device height: ${MediaQuery.of(context).size.height}");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Listview",
            style: TextStyle( fontSize: 30, fontWeight: FontWeight.w400),
            ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQovFzI1OM5Y_eqSiGhVsYwVMOaOr1UDQxBvg&s"),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            const Text(
              "Bhari",
              style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w400,
              ),
              ),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQovFzI1OM5Y_eqSiGhVsYwVMOaOr1UDQxBvg&s"),
              GestureDetector(
                onTap: () {
                  print("Button Pressed");
                },
                child: Container(
                  height: 100,
                  color: Colors.amber,
                  child: const Text(
                    "Press me"
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
