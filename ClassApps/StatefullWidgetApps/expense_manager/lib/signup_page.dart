import 'package:expense_manager/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget{
  const SignUpScreen({super.key});
  @override  
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen>{

  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassContoller = TextEditingController();

  @override  
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(height: 60,),
              Container(
                height: 78,
                width: 89,
                //padding: EdgeInsets.all(10),
                child: Image.asset("assets/home_logo.png"),
                ),
                const SizedBox(height: 70,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Create your Account",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                  ),
                  const SizedBox(height: 30,),
              Container(
                    height: 49,
                    width: 300,
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), 
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: const Offset(2, 3), 
                          blurStyle: BlurStyle.outer
                        )
                      ]
                    ),
                    child: TextField(
                      controller: nameController ,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Name",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                        ),
                        fillColor: Colors.white
                        
                      ),
                    ),
                  ),
              const SizedBox(height: 30,),
              Container(
                    height: 49,
                    width: 300,
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), 
                          blurRadius: 10,
                          spreadRadius: 2,
                          blurStyle: BlurStyle.outer
                        )
                      ]
                    ),
                    child: TextField(
                      controller: usernameController ,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Username",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                        ),
                        fillColor: Colors.white
                        
                      ),
                    ),
                  ),
              const SizedBox(height: 30,),
              Container(
                    height: 49,
                    width: 300,
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), 
                          blurRadius: 10,
                          spreadRadius: 2,
                          blurStyle: BlurStyle.outer
                        )
                      ]
                    ),
                    child: TextField(
                      controller: passwordController ,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                        ),
                        fillColor: Colors.white
                        
                      ),
                    ),
                  ),
              const SizedBox(height: 30,),
              Container(
                    height: 49,
                    width: 300,
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), 
                          blurRadius: 10,
                          spreadRadius: 2,
                          blurStyle: BlurStyle.outer
                        )
                      ]
                    ),
                    child: TextField(
                      controller: confirmPassContoller ,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                        ),
                        fillColor: Colors.white
                        
                      ),
                    ),
                  ),
            
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const HomePageScreen();
                  }));
                },
                child: Container(
                  height: 49,
                  width: 280,
                  padding: const EdgeInsets.symmetric(horizontal: 105, vertical: 13),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(14, 161, 125, 1),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                      blurStyle: BlurStyle.outer,
                      blurRadius: 4
                    )]
                  ),
                  child: Text("Sign Up",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),
                  ),
                ),
              )
                ],
              ),

    
              
            ],
          ),
        ),
      )
    );
  }
}