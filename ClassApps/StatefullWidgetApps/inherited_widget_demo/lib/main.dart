import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:inherited_widget_demo/controller/widget_controller.dart';
import 'package:inherited_widget_demo/login_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyC5L1DN0dwPtdNuefVcam0hLXaWxtL21fk", 
      appId: "1:23776304288:android:3fd141a4aeb3cca91f3dc5", 
      messagingSenderId: "23776304288", 
      projectId: "inheritedwidgetdemo"
    )
  );
  runApp(MainApp());
}

// ignore: must_be_immutable
class MainApp extends StatelessWidget {
  String username="";
  String password="";
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginData(
      username: username,
      password : password,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}
