import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget{
  const SignUpScreen({super.key});
  @override  
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen>{
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(height: 60,),
              Container(
                height: 68,
                width: 79,
                //padding: EdgeInsets.all(10),
                child: Image.asset("assets/Log in@2x.png"),
                ),
                const SizedBox(height: 70,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Create your Account",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                  ),
                  const SizedBox(height: 30,),
              Container(
                height: 49,
                width: 280,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurStyle: BlurStyle.outer,
                    blurRadius: 4
                  )]
                ),
                child: Text("Name",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0, 0, 0, 0.4)
                ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 49,
                width: 280,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurStyle: BlurStyle.outer,
                    blurRadius: 4
                  )]
                ),
                child: Text("Username",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0, 0, 0, 0.4)
                ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 49,
                width: 280,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurStyle: BlurStyle.outer,
                    blurRadius: 4
                  )]
                ),
                child: Text("Password",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0, 0, 0, 0.4)
                ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 49,
                width: 280,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurStyle: BlurStyle.outer,
                    blurRadius: 4
                  )]
                ),
                child: Text("Confirm Password",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0, 0, 0, 0.4)
                ),
                ),
              ),
              const SizedBox(height: 30,),
              Container(
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