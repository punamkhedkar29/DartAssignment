import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inherited_widget_demo/controller/widget_controller.dart';
import 'package:inherited_widget_demo/get_data.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log in"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Username"
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Username"
                ),
              ),
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: () async{
                  if(usernameController.text.trim().isNotEmpty && passwordController.text.trim().isNotEmpty){
                    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: usernameController.text ,
                      password: passwordController.text 
                    );
                    log("C2W: $userCredential");
                    Map<String, dynamic> data = {
                      "username" : usernameController.text,
                      "password" : passwordController.text
                    };
                    await FirebaseFirestore.instance.collection("LoginData").add(data);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("User Registered successfully!!")) 
                    );
                    usernameController.clear();
                    passwordController.clear();
                    setState(() {});
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Fill all fields")) 
                    );
                  }
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber
                  ),
                  child: const Center(child: Text("Register",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),)),
                ),
              ),
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: () async {
                  try{
                    if(usernameController.text.trim().isNotEmpty && passwordController.text.trim().isNotEmpty){
                      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: usernameController.text, 
                        password: passwordController.text
                      );
                      LoginData.of(context).username=usernameController.text;
                      LoginData.of(context).password = passwordController.text;
                      log("Log in: $userCredential");
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return const GetData();
                      }));
                      setState(() {
                        
                      });
                    }
                  } on FirebaseAuthException catch(authObj){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("${authObj.message}"))
                    );
                  }
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber
                  ),
                  child: const Center(child: Text("Log in",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}