import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:navigation_demo/Screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen1"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Screen1"),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const Screen2();
                }));
              },
              child: Container(
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Center(child: Text("Next")),
              ),
            )
          ],
        ),
      ),
    );
  }
}