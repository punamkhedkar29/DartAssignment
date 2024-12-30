import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:widget_lifecycle/screen2.dart';

class WidgetLifecycle extends StatefulWidget {
  const WidgetLifecycle({super.key});

  @override
  State<WidgetLifecycle> createState() => _WidgetLifecycleState();
}

class _WidgetLifecycleState extends State<WidgetLifecycle> {
  String str="C2W";
  @override
  Widget build(BuildContext context) {
    log("In build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen1"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Screen2(text: str,),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){setState(() {
                str= (str=="C2W") ? "Core2Web" : "C2W";
              });
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                return Screen2(text: str);
              }));
              },
              child:Text("Change Text") ,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState(){
    super.initState();
    log("In initState()");
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    log("In didChangeDependencies()");
  }

  @override
  void deactivate(){
    super.deactivate();
    log("In deactivate()");
  }

  @override
  void dispose(){
    super.dispose();
    log("In dispose()");
  }
}