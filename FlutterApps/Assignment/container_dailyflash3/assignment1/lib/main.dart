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
        body: Center(
          child: Container(
            height:300,
            width: 300,
            color: Colors.amber,
            //padding: const EdgeInsets.only(top:20,left:50,bottom: 20, right: 50),
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoYhb61Moi9JBoHyjir5XfRZ-V-8OxIopyrw&s", fit: BoxFit.cover,),
          ),
        ),
      ),
    );
  }
}
