import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  State<MainApp> createState()=> _MainApp();
}

class _MainApp extends State<MainApp>{

  bool flag = true;
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
          child: GestureDetector(
            onTap: () {
              flag=false;
              setState(() {
                
              });
            },
            child: Container(
              height: 300,
              width: 300,
              padding: const EdgeInsets.only(top:120),
              decoration:BoxDecoration(
                color: flag?Colors.red: Colors.blue,
              ),
              child: flag?const Text("Click me!!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400
              ),
              textAlign: TextAlign.center,
              ): const Text("Container Tapped",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400
              ),
              textAlign: TextAlign.center,
              )
            ),
          )
        ),
      ),
    );
  }
}
