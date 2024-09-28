import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 5,
                  color: Colors.black,
                ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 35,
                color: Colors.orange,
              ),
              Container(
                width: 200,
                height: 35,
                color: Colors.white,
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr61LgyhTsdgQRWbrnexntY_qBDSaaq6DfbQ&s"),
              ),
              Container(
                width: 200,
                height: 35,
                color: Colors.green,
              ),
            ],
            ),
            ],
          ),
          ],
        ),
      ),
    );
  }
}