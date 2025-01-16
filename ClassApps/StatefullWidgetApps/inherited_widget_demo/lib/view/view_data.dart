import 'package:flutter/material.dart';
import 'package:inherited_widget_demo/controller/widget_controller.dart';

class ViewData extends StatefulWidget {
  const ViewData({super.key});

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Username: ${LoginData.of(context).username}"),
            SizedBox(height: 10,),
            Text("Password: ${LoginData.of(context).password}")
          ],
        ),
      ),
    );
  }
}