import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override  
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen>{
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 250,),
            Container(
              height: 144,
              width: 144,
              padding: EdgeInsets.all(25),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
              ),
              child: Image.asset("assets/Log in@2x.png", fit: BoxFit.contain,height: 58, width: 69,),
            ),
            SizedBox(height: 200,),
            Text(
              "Expense Manager",
              style: GoogleFonts.poppins(
                fontWeight:FontWeight.w600,
                fontSize: 18
              ),
              )
          ],
        ),
      ),
    );
  }
}