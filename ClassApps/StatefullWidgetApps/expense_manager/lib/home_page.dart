import 'package:expense_manager/home_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageScreen extends StatefulWidget{
  const HomePageScreen({super.key});
  @override  
  State<HomePageScreen> createState() => _HomePageScreen();
}

class _HomePageScreen extends State<HomePageScreen>{
List<HomeModel> cardList=[
  HomeModel(date: "3 June | 11:50 AM", amount: "500", category: "Medicine", description: "Lorem Ipsum is simply dummy text of the "),
  HomeModel(date: "3 June | 11:50 AM", amount: "650", category: "Food", description: "Lorem Ipsum is simply dummy text of the "),
  HomeModel(date: "3 June | 11:50 AM", amount: "325", category: "Shopping", description: "Lorem Ipsum is simply dummy text of the "),
  HomeModel(date: "3 June | 11:50 AM", amount: "600", category: "Fuel", description: "Lorem Ipsum is simply dummy text of the "),
  HomeModel(date: "3 June | 11:50 AM", amount: "475", category: "Entertainment", description: "Lorem Ipsum is simply dummy text of the "),
  
];

List<Color> colorList= [
  const Color.fromRGBO(0, 174, 91, 0.7),
  const Color.fromRGBO(214, 3, 3, 0.7),
  const Color.fromRGBO(214, 38, 197, 0.7),
  const Color.fromRGBO(0, 148, 255, 0.7),
  const Color.fromRGBO(100, 62, 255, 0.7),
];

  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, size: 28,),
        title:  Row(
          children: [
            Text("November 2024",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
            ),
            const SizedBox(width: 10,),
            const Icon(Icons.arrow_drop_down, size: 32,)
          ],
        ),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: cardList.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 110,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    //color: Colors.amber,
                    //border: Border.all(color: Colors.black),
                    //borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: colorList[index],
                            ),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(cardList[index].category,
                                  style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                                  //SizedBox(width: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 18,
                                        width: 18,
                                        //padding: EdgeInsets.only(bottom: 5, right: 2),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromRGBO(246, 113, 49, 1)
                                        ),
                                        child: Center(child: Icon(Icons.remove, color: Colors.white,size: 18,)),
                                      ),
                                      Text(cardList[index].amount,
                                  style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                                    ],
                                  )
                                ],
                              ),
                              Text(cardList[index].description),
                            ],
                          )
                        ],
                      ),
                      Divider(color: Colors.black,)
                    ],
                  ),
                );
                
              },
            ),
          ],
        ),
      ),
      
    );
  }
}