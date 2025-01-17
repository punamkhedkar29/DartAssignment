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
            //padding: const EdgeInsets.all(30),
            child: Stack(
              children: [
                Image.asset("assets/download.jpg", fit: BoxFit.cover,),
                const Column(
                  children: [
                    SizedBox(height: 70,),
                    Row(
                      children: [
                        SizedBox(width: 70,),
                        Text("Core2web",
                        style: TextStyle(
                          fontSize: 30,
                        ),textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
