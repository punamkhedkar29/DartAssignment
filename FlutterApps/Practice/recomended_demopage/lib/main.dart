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
      home: Recomended(),
    );
  }
}

class Recomended extends StatefulWidget{
  const Recomended({super.key});
  @override
  State<Recomended> createState() => _Recomended();
}

class _Recomended extends State<Recomended>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_sharp),
        title: const Text(
          "Recomended",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(0,91,135,1)
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Start a new career",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                ),
              textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 6),
                      height: 35,
                      width: 120,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(0,91,135,1),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: const Text(
                        "Data Science",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white
                        ),
                        ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 6),
                      height: 35,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 218, 225, 227),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: const Text(
                        "Machines Learning",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(0,91,135,1),
                        ),
                        ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 6),
                      height: 35,
                      width: 130,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 218, 225, 227),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: const Text(
                        "Apache Spark",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(0,91,135,1),
                        ),
                        ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child:Container(
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 234, 232, 232),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset("assets/html_logo.jpg"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Data Science",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            const Text("Hardvard University",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text("Lorem ipsum dolor sit amet eget nunc\ndictum est penatubus nunc.",
                              style: TextStyle(
                                fontSize: 12
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 4),
                                  height: 25,
                                  width: 80,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 218, 225, 227),
                                  ),
                                  child: const Text(
                                    "Data Science",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color.fromRGBO(0,91,135,1),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 4),
                                  height: 25,
                                  width: 110,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 218, 225, 227),
                                  ),
                                  child: const Text(
                                    "Machine Learning",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color.fromRGBO(0,91,135,1),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              

              Padding(
                padding: const EdgeInsets.all(8),
                child:Container(
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 234, 232, 232),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset("assets/html_logo.jpg"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "AI & ML",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            const Text("Hardvard University",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text("Lorem ipsum dolor sit amet eget nunc\ndictum est penatubus nunc.",
                              style: TextStyle(
                                fontSize: 12
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 4),
                                  height: 25,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 218, 225, 227),
                                  ),
                                  child: const Text(
                                    "Machines Learning",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color.fromRGBO(0,91,135,1),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 4),
                                  height: 25,
                                  width: 90,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 218, 225, 227),
                                  ),
                                  child: const Text(
                                    "Decision Tree",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color.fromRGBO(0,91,135,1),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              


              Padding(
                padding: const EdgeInsets.all(8),
                child:Container(
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 234, 232, 232),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset("assets/html_logo.jpg"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Big Data",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            const Text("Hardvard University",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text("Lorem ipsum dolor sit amet eget nunc\ndictum est penatubus nunc.",
                              style: TextStyle(
                                fontSize: 12
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 4),
                                  height: 25,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 218, 225, 227),
                                  ),
                                  child: const Text(
                                    "Big Data",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color.fromRGBO(0,91,135,1),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 4),
                                  height: 25,
                                  width: 80,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 218, 225, 227),
                                  ),
                                  child: const Text(
                                    "Apache Spark",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color.fromRGBO(0,91,135,1),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              


              Padding(
                padding: const EdgeInsets.all(8),
                child:Container(
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 234, 232, 232),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset("assets/html_logo.jpg"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Devops",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            const Text("Hardvard University",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text("Lorem ipsum dolor sit amet eget nunc\ndictum est penatubus nunc.",
                              style: TextStyle(
                                fontSize: 12
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 4),
                                  height: 25,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 218, 225, 227),
                                  ),
                                  child: const Text(
                                    "Docker",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color.fromRGBO(0,91,135,1),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 4),
                                  height: 25,
                                  width: 70,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 218, 225, 227),
                                  ),
                                  child: const Text(
                                    "Kubemeters",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color.fromRGBO(0,91,135,1),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
        ),
      ),
    );
  }
}
