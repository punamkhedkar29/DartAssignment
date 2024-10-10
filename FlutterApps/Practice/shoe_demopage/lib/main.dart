import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoeDemoPage(),
        );
  }
}

class ShoeDemoPage extends StatefulWidget{
  const ShoeDemoPage({super.key});
  @override
  State<ShoeDemoPage> createState() => _ShoeDemoPage();
}

class _ShoeDemoPage extends State<ShoeDemoPage>{
  int count=0;
  @override
  Widget build(BuildContext context){
      return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Shoes",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.indigo,
              ),
            ),
            actions: [
              IconButton(
                onPressed: (){},
                 icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.indigo,
                )
              ),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 280,
                child:Image.network("https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                fit: BoxFit.cover,
              ),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Nike Air Force 1 ''07",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                    Container(
                      height: 40,
                      width: 80,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: const Text(
                        "SHOES",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        
                        ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 130,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: const Text(
                        "FOOTWEAR",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        ),
                    ),
                    
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "With iconic style and legendary comfort, the AF-1 was made to be worn on repeat. This iterartion puts a fresh spin on the hoopsclassic with crisp leather, era-echoing '80s construction and reflective-design Swoosh logos."
                ),
              ),
            
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Quantity",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                    ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      count--;
                      setState(() { });
                    },
                    child:const Text(
                      "-",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Text("$count"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      count++;
                      setState(() { });
                    },
                      child:const Text(
                        "+",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                  ),
                ],
              ),
              
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 45,
                  width: 350,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    borderRadius:  BorderRadius.all(Radius.circular(25)),
                    color: Colors.indigo,
                  ),
                  child: const Text(
                    "PURCHASE",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  
                   
                ),
              )
            ],
            ),
      );
  }
}


