import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        body: Center(
          child: Container(
              height: 200,
              width: 300,
              clipBehavior:Clip.antiAlias,
              decoration: const BoxDecoration(),
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                decoration: const BoxDecoration(
                  color: Colors.amber,
                boxShadow: [BoxShadow(
                  blurRadius: 10,
                  blurStyle: BlurStyle.outer,
                )]
              ),
              ),
              
          )
        ),
      ),
    );
  }
}
