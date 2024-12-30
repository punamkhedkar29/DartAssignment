import 'package:flutter/material.dart';
void main() {
  runApp(const _ContainerApp());
}

class _ContainerApp extends StatefulWidget {
  const _ContainerApp({super.key});
  @override
  State<_ContainerApp> createState() => __ContainerAppState();
}

class __ContainerAppState extends State<_ContainerApp> {
  bool isTap=true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:  Center(
          child: GestureDetector(
            onTap: () {
              if(isTap == true){
              isTap = false;
            } else{
              isTap = true;
            }
              setState(() {
                
              });
            },
            child: Container(
              height:200,
              width:200,
              decoration: BoxDecoration(
                //color: Colors.blue,
                border: isTap ? Border.all(color: Colors.red, width: 3) : Border.all(color: Colors.green, width: 3)
              )
            ),
          ),
        ),
      ),
    );
  }
}