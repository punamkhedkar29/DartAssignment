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
      home: ShoesApp(),
    );
  }
}

class ShoesApp extends StatefulWidget{
  const ShoesApp({super.key});
  @override
  State<ShoesApp> createState() => _ShoesApp();
}

class _ShoesApp extends State<ShoesApp>{
  int count1=0;
  int count2=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_sharp),
        title: const Text(
          "My cart",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.indigo,
          ),
          ),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 120,
              
              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 245, 241, 241),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),),
                      child:Image.asset("assets/shoe.jpg"),
                      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Nike Shoes",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ),
                          ),
                        const Text("With iconic style and legendary \ncomfort, on repeat."),
                        Row(
                            children: [
                              const Text(
                                "\$570.00",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              const SizedBox(
                                width: 40,
                              ),
                              GestureDetector(
                                onTap: () {
                                  count1--;
                                  setState(() { });
                                },
                              child:const Icon(Icons.remove),
                              ),
                              Container(
                                  height: 25,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                                    border: Border.all(
                                      color: Colors.indigo,
                                    ),
                                  ),
                                  child:Text("$count1",
                                  textAlign: TextAlign.center,
                                  ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  count1++;
                                  setState(() { });
                                },
                              child:const Icon(Icons.add),
                              ),
                            ],
                        )
                      ],
                    ),
                  )
                ],
                )
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 120,
              
              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 245, 241, 241),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),),
                      child:Image.asset("assets/shoe.jpg"),
                      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Nike Shoes",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ),
                          ),
                        const Text("With iconic style and legendary \ncomfort, on repeat."),
                        Row(
                            children: [
                              const Text(
                                "\$570.00",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              const SizedBox(
                                width: 40,
                              ),
                              GestureDetector(
                                onTap: () {
                                  count2--;
                                  setState(() { });
                                },
                              child:const Icon(Icons.remove),
                              ),
                              Container(
                                  height: 25,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                                    border: Border.all(
                                      color: Colors.indigo,
                                    ),
                                  ),
                                  child:Text("$count2",
                                  textAlign: TextAlign.center,
                                  ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  count2++;
                                  setState(() { });
                                },
                              child:const Icon(Icons.add),
                              ),
                            ],
                        )
                      ],
                    ),
                  )
                ],
                )
            ),
            const SizedBox(
              height: 180,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Subtotal:",
                  style: TextStyle(
                    fontSize: 18
                  ),
                  textAlign: TextAlign.left,
                  ),
                Text(
                  "\$800.00",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700
                  ),
                  ),
              ],
              ),
              const SizedBox(
                height: 10,
              ),
              
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery Fee:",
                    style: TextStyle(
                      fontSize: 18
                    ),
                    textAlign: TextAlign.start,
                    ),
                  Text(
                    "\$5.00",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discount:",
                    style: TextStyle(
                      fontSize: 18
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "40%",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 350,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30),),
                  color: Colors.indigo
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Checkout for \u20B9480.00",
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
      ),
    );
  }

}