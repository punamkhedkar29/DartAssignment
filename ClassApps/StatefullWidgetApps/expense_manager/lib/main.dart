import 'package:expense_manager/home_page.dart';
import 'package:expense_manager/home_screen.dart';
import 'package:expense_manager/login_page.dart';
import 'package:expense_manager/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePageScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
