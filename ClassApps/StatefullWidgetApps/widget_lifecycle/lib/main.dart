import 'package:flutter/material.dart';
import 'package:widget_lifecycle/widgetL_lfecycle.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WidgetLifecycle(),
      debugShowCheckedModeBanner: false,
    );
  }
}
