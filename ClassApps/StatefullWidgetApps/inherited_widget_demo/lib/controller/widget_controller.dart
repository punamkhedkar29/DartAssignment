import 'package:flutter/material.dart';
import 'package:inherited_widget_demo/login_screen.dart';

// ignore: must_be_immutable
class LoginData extends InheritedWidget{
  String username = usernameController.text;
  String password = passwordController.text;
  LoginData({
    super.key,
    required this.password,
    required this.username,
    required super.child
  });

  static LoginData of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<LoginData>()!;
  }
  @override
  bool updateShouldNotify(LoginData oldWidget){
    return password!=oldWidget.password && username!=oldWidget.username;
  }
}