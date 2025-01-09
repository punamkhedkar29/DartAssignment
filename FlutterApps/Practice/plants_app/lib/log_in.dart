import 'package:flutter/material.dart';
import 'package:plants_app/verification_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
               child: Image.asset("assets/Group 5314(1).png")
              ),
            const SizedBox(height: 20,),
            const Center(
              child: Text("Log in",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(35),
              child: TextField(
                controller: mobileController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Mobile Number",
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const VerificationPage();
                }));
              },
              child: Center(
                child: Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(colors: [Color.fromRGBO(62, 102, 24, 1),Color.fromRGBO(124, 180, 70, 1)], begin: Alignment.bottomCenter, end: Alignment.topCenter)
                  ),
                  child: const Center(
                    child: Text(" Log in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Center(
              child: SizedBox(
                height: 350,
                width: 350,
                child: Image.asset("assets/plant2.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}