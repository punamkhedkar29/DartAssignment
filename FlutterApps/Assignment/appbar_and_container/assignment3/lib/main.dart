import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Core2web"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: 
              Container(
                width: 360,
                height: 200,
                color: Colors.blue,
              ),
          ),
        ),
      );
  }
}