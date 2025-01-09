import 'package:flutter/material.dart';
import 'package:plants_app/log_in.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 480,
              child: Image.asset("assets/plant.png")
            ),
          const Text("Enjoy your",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w400
            ),
          ),
          const Row(
            children: [
              SizedBox(width: 75,),
              Text(" life with ",
                 style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w400
                ),
              ),
              Text("Plants",
                   style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.w500
                  ),
              )
            ],
          ),
          const SizedBox(height: 50,),

          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const LogIn();
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(" Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(width: 5,),
                      Icon(Icons.arrow_forward_ios_outlined, color: Colors.white,size: 16,)
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}