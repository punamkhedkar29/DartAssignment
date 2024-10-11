import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoApp(),
    );
  }
}

class ToDoApp extends StatefulWidget{
  const ToDoApp({super.key});
  @override
  State<ToDoApp> createState() => _ToDoApp();
}

class _ToDoApp extends State<ToDoApp>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "To-do list",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),    
        ),
        backgroundColor: const Color.fromARGB(1,2, 167, 177),
      ),
      body: ListView.builder(
        itemBuilder: 
      ),
    );
  }
}
