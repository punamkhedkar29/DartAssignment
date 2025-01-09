import 'package:flutter/material.dart';

class ProductHome extends StatefulWidget {
  const ProductHome({super.key});

  @override
  State<ProductHome> createState() => _ProductHomeState();
}

class _ProductHomeState extends State<ProductHome> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 130),
              Image.asset("assets/circle2.png"),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Find your \nfavorite plants",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 201, 201, 201)),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurStyle: BlurStyle.outer,
                                color: Color.fromRGBO(0, 0, 0, 0.15),
                                blurRadius: 16.1,
                              ),
                            ],
                          ),
                          child: Image.asset("assets/shopping-bag.png"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 108,
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: 3, // Adjust based on the number of pages
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPage = page;
                          });
                        },
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Container(
                              height: 108,
                              width: 300,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(204, 231, 185, 1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 22),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.0, vertical: 24),
                                      child: Column(
                                        children: [
                                          Text(
                                            "30% OFF",
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text("02-23 April"),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 208,
                                      width: 120,
                                      child: Image.asset("assets/plant3.png"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          3, // Adjust based on the number of pages
                          (index) => AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.symmetric(horizontal: 4.0),
                            height: 8,
                            width: _currentPage == index ? 16 : 8,
                            decoration: BoxDecoration(
                              color: _currentPage == index
                                  ? const Color.fromRGBO(62, 102, 24, 1)
                                  : const Color.fromRGBO(197, 214, 181, 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Indoor",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Container(
                              width: 141,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurStyle: BlurStyle.outer,
                                    color: Color.fromRGBO(0, 0, 0, 0.15),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Image.asset("assets/plant4.png"),
                                  const Text(
                                    "Snake Plants",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const SizedBox(width: 5),
                                      const Text(
                                        "₹350",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromRGBO(62, 102, 24, 1),
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Container(
                                        height: 28,
                                        width: 28,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromRGBO(237, 238, 235,
                                              1),
                                        ),
                                        child: Image.asset(
                                            "assets/shopping-bag-black.png"),
                                      ),
                                      const SizedBox(width: 5),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 20),
                    const Text(
                      "Outdoor",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Container(
                              width: 141,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurStyle: BlurStyle.outer,
                                    color: Color.fromRGBO(0, 0, 0, 0.15),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Image.asset("assets/plant4.png"),
                                  const Text(
                                    "Snake Plants",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const SizedBox(width: 5),
                                      const Text(
                                        "₹350",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromRGBO(62, 102, 24, 1),
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Container(
                                        height: 28,
                                        width: 28,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromRGBO(237, 238, 235,
                                              1),
                                        ),
                                        child: Image.asset(
                                            "assets/shopping-bag-black.png"),
                                      ),
                                      const SizedBox(width: 5),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
