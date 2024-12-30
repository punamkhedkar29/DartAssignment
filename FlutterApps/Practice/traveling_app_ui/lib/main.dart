import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Where do you want to travel?",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 7, 28, 133),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 41,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(233, 237, 248, 1),
                      ),
                      child:const Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 67)),
                          Text("Select Destination",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 18, 115, 194)
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(right: 20)),
                          Icon(Icons.arrow_drop_down_outlined,
                            color:Color.fromARGB(255, 18, 115, 194),
                          )
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(right: 30)),
                    Container(
                      height: 41,
                      width: 41,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 18, 115, 194)
                      ),
                      child: const Icon(Icons.search,color: Colors.white),
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.only(bottom: 20)),
                const Text("Best Deals",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700
                  ),
                ),
                const Row(
                  children: [
                    Text("Sorted by lower price",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_sharp)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10, right: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromRGBO(233, 237, 248, 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Text("El Cairo",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(right: 30)),
                                    Icon(Icons.star,color: Color.fromARGB(255, 239, 153, 3),),
                                    Text("4.6",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 239, 153, 3)
                                    ),
                                    )
                                  ],
                                ),
                                const Text("Egypt",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 110,
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Image.network("https://th.bing.com/th/id/OIP.otG8QP1DBrojPi_luHT7RgAAAA?w=196&h=134&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                                  
                                  ),
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 25,
                                      padding: const EdgeInsets.only(top: 3),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                            
                                      ),
                                      child: const Text("More",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(255, 18, 115, 194)
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    const Padding(padding: EdgeInsets.only(right: 33)),
                                    Container(
                                      width: 50,
                                      height: 25,
                                      padding: const EdgeInsets.only(top: 3),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 18, 115, 194),
                                        borderRadius: BorderRadius.circular(20),
                            
                                      ),
                                      child: const Text("\$260",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 15)),
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(233, 237, 248, 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Text("London",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(right: 30)),
                                    Icon(Icons.star,color: Color.fromARGB(255, 239, 153, 3),),
                                    Text("4.6",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 239, 153, 3)
                                    ),
                                    )
                                  ],
                                ),
                                const Text("England",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 110,
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Image.network("https://th.bing.com/th/id/OIP.otG8QP1DBrojPi_luHT7RgAAAA?w=196&h=134&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                                  
                                  ),
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 25,
                                      padding: const EdgeInsets.only(top: 3),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                            
                                      ),
                                      child: const Text("More",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(255, 18, 115, 194)
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    const Padding(padding: EdgeInsets.only(right: 40)),
                                    Container(
                                      width: 50,
                                      height: 25,
                                      padding: const EdgeInsets.only(top: 3),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 18, 115, 194),
                                        borderRadius: BorderRadius.circular(20),
                            
                                      ),
                                      child: const Text("\$330",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 15)),
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromRGBO(233, 237, 248, 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Text("El Cairo",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(right: 30)),
                                    Icon(Icons.star,color: Color.fromARGB(255, 239, 153, 3),),
                                    Text("4.6",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 239, 153, 3)
                                    ),
                                    )
                                  ],
                                ),
                                const Text("Egypt",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 110,
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Image.network("https://th.bing.com/th/id/OIP.otG8QP1DBrojPi_luHT7RgAAAA?w=196&h=134&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                                  
                                  ),
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 25,
                                      padding: const EdgeInsets.only(top: 3),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                            
                                      ),
                                      child: const Text("More",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(255, 18, 115, 194)
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    const Padding(padding: EdgeInsets.only(right: 40)),
                                    Container(
                                      width: 50,
                                      height: 25,
                                      padding: const EdgeInsets.only(top: 3),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 18, 115, 194),
                                        borderRadius: BorderRadius.circular(20),
                            
                                      ),
                                      child: const Text("\$260",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 20)),
                const Text("Popular Destinations",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700
                  ),
                ),
                const Row(
                  children: [
                    Text("Sorted by Higher rating",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_sharp)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10, right: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromRGBO(233, 237, 248, 1),
                                ),
                                child: Center(
                                  child:
                                      SizedBox(
                                        height: 50,
                                        width: 90,
                                        //padding: const EdgeInsets.only(left: 40),
                                        child: Image.network("https://th.bing.com/th/id/OIP.otG8QP1DBrojPi_luHT7RgAAAA?w=196&h=134&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                                      ),
                                ),
                              ),
                              const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Santorini",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 40)),
                                      Row(
                                        children: [
                                          Icon(Icons.star,color: Color.fromARGB(255, 239, 153, 3),),
                                          Text("4.6",
                                            style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(255, 239, 153, 3)
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Greece",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 40)),
                                      Text("663 Reviews",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey
                                        ),
                                      )
                                    ],
                                  )
                            ],
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 15)),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromRGBO(233, 237, 248, 1),
                                ),
                                child: Center(
                                  child:
                                      SizedBox(
                                        height: 50,
                                        width: 90,
                                        //padding: const EdgeInsets.only(left: 40),
                                        child: Image.network("https://th.bing.com/th/id/OIP.otG8QP1DBrojPi_luHT7RgAAAA?w=196&h=134&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                                      ),
                                ),
                              ),
                              const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Cancun",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 40)),
                                      Row(
                                        children: [
                                          Icon(Icons.star,color: Color.fromARGB(255, 239, 153, 3),),
                                          Text("4.6",
                                            style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(255, 239, 153, 3)
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Mexico",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 40)),
                                      Text("848 Reviews",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey
                                        ),
                                      )
                                    ],
                                  )
                            ],
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 15)),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromRGBO(233, 237, 248, 1),
                                ),
                                child: Center(
                                  child:
                                      SizedBox(
                                        height: 50,
                                        width: 90,
                                        //padding: const EdgeInsets.only(left: 40),
                                        child: Image.network("https://th.bing.com/th/id/OIP.otG8QP1DBrojPi_luHT7RgAAAA?w=196&h=134&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                                      ),
                                ),
                              ),
                              const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Cancun",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 40)),
                                      Row(
                                        children: [
                                          Icon(Icons.star,color: Color.fromARGB(255, 239, 153, 3),),
                                          Text("4.6",
                                            style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(255, 239, 153, 3)
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Mexico",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 40)),
                                      Text("848 Reviews",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey
                                        ),
                                      )
                                    ],
                                  )
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 20)),
                const Text("Popular Destinations",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700
                  ),
                ),
                const Row(
                  children: [
                    Text("Sorted by Higher rating",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_sharp)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10, right: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromRGBO(233, 237, 248, 1),
                                ),
                                child: Center(
                                  child:
                                      SizedBox(
                                        height: 50,
                                        width: 90,
                                        //padding: const EdgeInsets.only(left: 40),
                                        child: Image.network("https://th.bing.com/th/id/OIP.otG8QP1DBrojPi_luHT7RgAAAA?w=196&h=134&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                                      ),
                                ),
                              ),
                              const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Santorini",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 40)),
                                      Row(
                                        children: [
                                          Icon(Icons.star,color: Color.fromARGB(255, 239, 153, 3),),
                                          Text("4.6",
                                            style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(255, 239, 153, 3)
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Greece",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 40)),
                                      Text("663 Reviews",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey
                                        ),
                                      )
                                    ],
                                  )
                            ],
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 15)),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromRGBO(233, 237, 248, 1),
                                ),
                                child: Center(
                                  child:
                                      SizedBox(
                                        height: 50,
                                        width: 90,
                                        //padding: const EdgeInsets.only(left: 40),
                                        child: Image.network("https://th.bing.com/th/id/OIP.otG8QP1DBrojPi_luHT7RgAAAA?w=196&h=134&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                                      ),
                                ),
                              ),
                              const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Cancun",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 40)),
                                      Row(
                                        children: [
                                          Icon(Icons.star,color: Color.fromARGB(255, 239, 153, 3),),
                                          Text("4.6",
                                            style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(255, 239, 153, 3)
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Mexico",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 40)),
                                      Text("848 Reviews",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey
                                        ),
                                      )
                                    ],
                                  )
                            ],
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 15)),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromRGBO(233, 237, 248, 1),
                                ),
                                child: Center(
                                  child:
                                      SizedBox(
                                        height: 50,
                                        width: 90,
                                        //padding: const EdgeInsets.only(left: 40),
                                        child: Image.network("https://th.bing.com/th/id/OIP.otG8QP1DBrojPi_luHT7RgAAAA?w=196&h=134&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                                      ),
                                ),
                              ),
                              const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Cancun",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 40)),
                                      Row(
                                        children: [
                                          Icon(Icons.star,color: Color.fromARGB(255, 239, 153, 3),),
                                          Text("4.6",
                                            style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(255, 239, 153, 3)
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Mexico",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 40)),
                                      Text("848 Reviews",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey
                                        ),
                                      )
                                    ],
                                  )
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
