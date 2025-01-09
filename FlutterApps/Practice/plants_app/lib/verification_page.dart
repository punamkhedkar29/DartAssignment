import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plants_app/product_home.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 20,),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back_outlined)
                  ),
                ],
              ),
              SizedBox(
                child: Image.asset("assets/circle1.png"),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Verification",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(height: 10,),
                const Text("Enter the OTP code from the phone we \njust sent you.",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(255, 201, 201, 201)),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            blurStyle: BlurStyle.outer
                          )
                        ]
                      ),
                    ),
                  
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(255, 201, 201, 201)),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            blurStyle: BlurStyle.outer
                          )
                        ]
                      ),
                    ),
                    
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(255, 201, 201, 201)),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            blurStyle: BlurStyle.outer
                          )
                        ]
                      ),
                    ),
                   
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(255, 201, 201, 201)),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            blurStyle: BlurStyle.outer
                          )
                        ]
                      ),
                    ),
                    
                  ],
                ),
                const SizedBox(height: 20,),
                const Row(
                  children: [
                    Text("Don’t receive OTP code! ",
                       style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text("Resend",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 20,),

                GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const ProductHome();
                }));
              },
              child: Center(
                child: Container(
                  height: 50,
                  //width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(colors: [Color.fromRGBO(62, 102, 24, 1),Color.fromRGBO(124, 180, 70, 1)], begin: Alignment.bottomCenter, end: Alignment.topCenter)
                  ),
                  child: const Center(
                    child: Text("Submit",
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
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}