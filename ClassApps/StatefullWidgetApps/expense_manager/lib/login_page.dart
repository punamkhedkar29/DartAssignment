import 'package:expense_manager/home_page.dart';
import 'package:expense_manager/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});
  @override  
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen>{

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                  Text("Login to your Account",
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
                          color: Colors.grey
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
                          color: Colors.grey
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
                  width: 300,
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
                  child: Text("Sign In",
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

              const SizedBox(height: 170,),
              Row(
                children: [
                  const SizedBox(width: 70,),
                  Text("Don’t have an account?",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 0, 0, 0.6)
                  ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return const SignUpScreen();
                      }));
                    },
                    child: Text(" Sign up",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(14, 161, 125, 1)
                    ),
                    ),
                  )
                ],
              )
              
            ],
          ),
        ),
      )
    );
  }
}