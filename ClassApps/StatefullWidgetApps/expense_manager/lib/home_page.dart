import 'package:expense_manager/categories.dart';
import 'package:expense_manager/graph.dart';
import 'package:expense_manager/home_model.dart';
import 'package:expense_manager/trash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreen();
}

class _HomePageScreen extends State<HomePageScreen> {
  List<HomeModel> cardList = [
    HomeModel(
        date: "3 June | 11:50 AM",
        amount: "500",
        category: "Medicine",
        description: "Lorem Ipsum is simply dummy text of the "),
    HomeModel(
        date: "3 June | 11:50 AM",
        amount: "650",
        category: "Food",
        description: "Lorem Ipsum is simply dummy text of the "),
    HomeModel(
        date: "3 June | 11:50 AM",
        amount: "325",
        category: "Shopping",
        description: "Lorem Ipsum is simply dummy text of the "),
    HomeModel(
        date: "3 June | 11:50 AM",
        amount: "600",
        category: "Fuel",
        description: "Lorem Ipsum is simply dummy text of the "),
    HomeModel(
        date: "3 June | 11:50 AM",
        amount: "475",
        category: "Entertainment",
        description: "Lorem Ipsum is simply dummy text of the "),
  ];

  List iconList = [
    "assets/medicine.png",
    "assets/food.png",
    "assets/shopping.png",
    "assets/fuel.png",
    "assets/enterntainment.png",
  ];

  List<Color> colorList = [
    const Color.fromRGBO(0, 174, 91, 0.7),
    const Color.fromRGBO(214, 3, 3, 0.7),
    const Color.fromRGBO(214, 38, 197, 0.7),
    const Color.fromRGBO(0, 148, 255, 0.7),
    const Color.fromRGBO(100, 62, 255, 0.7),
  ];

  int selectedIndex=0;


  TextEditingController amountController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController categoryController = TextEditingController();

   void showBottomSheet(){
    showModalBottomSheet(
      context: context, 
      builder: (context){
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              top: 12,
              right: 15,
              left: 15
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children:[
                const SizedBox(
                  height: 10,
                ),
                
                //date
                      
                 Text("Date",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                
                ),
                ),
                 const SizedBox(height: 8,),
                Container(
                  height: 43,
                  child: TextField(
                   // cursorHeight: 30,
                    controller: dateController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        
                      ),
                      suffixIcon: const Icon(Icons.calendar_month_outlined),
                    ),
                    onTap: () async{
                      DateTime? pickedDate = await showDatePicker(
                        context: context, 
                        firstDate: DateTime(2025), 
                        lastDate: DateTime(2026),
                        );
                        String formattedDate = DateFormat.yMMMd().format(pickedDate!);
                        setState(() {
                          dateController.text = formattedDate;
                        });
                    },
                  ),
                ),
                 const SizedBox(height: 15,),
                // Amount
                      
                 Text("Amount",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
            
                ),
                ),
                 const SizedBox(height: 8,),
                Container(
                  height: 43,
                  child: TextField(
                    keyboardType:const TextInputType.numberWithOptions(),
                    controller: amountController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                      
                //Description
                      
                Text("Category",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  
                ),
                ),
                 const SizedBox(height: 8,),
                Container(
                  height: 43,
                  child: TextField(
                    controller: categoryController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                 Text("Description",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  
                ),
                ),
                 const SizedBox(height: 8,),
                Container(
                  height: 43,
                  child: TextField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          
                        ),
                      ),
                    ),
                  ),
                ),
                      
                const SizedBox(height: 15,),
                      
                //Submit
                Center(
                  child: SizedBox(
                    height: 40,
                    width: 145,
                    child: ElevatedButton(
                      onPressed:(){
                        // if(doEdit==true){
                        //   submit(true, todoObj);
                        // }else{
                        //   submit(false);
                        // }  
                      } ,
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Color.fromRGBO(14,161,125,1),
                        ),
                      ),
                      child: const Text(
                        "Add",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                              
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),

                
              ],
            ),
          ),
        );
      });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // leading: const Icon(
        //   Icons.menu,
        //   size: 28,
        //   color: Colors.black,
        // ),
        title: Row(
          children: [
            Text(
              "November 2024",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.arrow_drop_down,
              size: 32,
              color: Colors.black,
            )
          ],
        ),
      ),
      drawer: SizedBox(
        width: 250,
        child: Drawer(
         
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: 120,
                child: DrawerHeader(
                  
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Expense Manager', 
                      style: GoogleFonts.poppins(
                        fontSize: 20, 
                        fontWeight: FontWeight.w600, 
                        color: Colors.black
                        )
                      ),
                      Text("Saves all your Transactions",
                      style: GoogleFonts.poppins(
                        fontSize: 12, 
                        fontWeight: FontWeight.w400, 
                        color: Colors.black
                        )
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                
                leading: Image.asset("assets/Transaction.png"),
                title: Text('Transaction',
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: selectedIndex==0 ? Color.fromRGBO(14, 161, 125, 1) : Colors.black
                  ),
                ),
                selectedTileColor: Color.fromRGBO(14, 161, 125, 0.15),
                selected: selectedIndex==0,
                
                onTap: () {
                 
                    selectedIndex=0;
                    setState(() {
                      
                    });
                },
              ),
              ListTile(
                leading: Image.asset("assets/Graphs.png"),
                title: Text('Graphs',
                 style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: selectedIndex==1 ? Color.fromRGBO(14, 161, 125, 1) : Colors.black
                  ),
                ),
                selectedTileColor: Color.fromRGBO(14, 161, 125, 0.15),
                selected: selectedIndex==1,
                onTap: () {
                  
                    selectedIndex=1;
                    setState(() {
                      
                    });
                     Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return  PieChartPage();
                    }));
                  
                },
              ),
              ListTile(
                leading: Image.asset("assets/Category.png"),
                title: Text('Category',
                 style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                     color: selectedIndex==2 ? Color.fromRGBO(14, 161, 125, 1) : Colors.black
                  ),
                ),
                
               selected: selectedIndex==2,
                onTap: () {
                  
                    selectedIndex=2;
                    setState(() {
                      
                    });
                     Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return const CategoriesPage();
                    }));
                  
                },
              ),
              ListTile(
                leading: Image.asset("assets/Trash.png"),
                title: Text('Trash',
                 style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                     color: selectedIndex==3 ? Color.fromRGBO(14, 161, 125, 1) : Colors.black
                  ),
                ),
                selected: selectedIndex==3,
                onTap: () {
                  
                    selectedIndex=3;
                    
                    setState(() {
                      
                    });
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return const TrashPage();
                    }));
                  
                },
              ),
              ListTile(
                leading: Image.asset("assets/About us.png"),
                title: Text('About us',
                 style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                     color: selectedIndex==4 ? Color.fromRGBO(14, 161, 125, 1) : Colors.black
                  ),
                ),
                selected: selectedIndex==4,
                onTap: () {
                  
                    selectedIndex=4;
                    setState(() {
                      
                    });
                  
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: cardList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: colorList[index],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Image.asset(
                                iconList[index],
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      cardList[index].category,
                                      style: GoogleFonts.poppins(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 18,
                                          width: 18,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                Color.fromRGBO(246, 113, 49, 1),
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 16,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Text(
                                          cardList[index].amount,
                                          style: GoogleFonts.poppins(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  cardList[index].description,
                                  style: GoogleFonts.poppins(fontSize: 14),
                                ),
                                 const SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      cardList[index].date,
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 34,
                      thickness: 1,
                    ),
                  ],
                );
              },
            ),

           Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Container(
                  decoration:const BoxDecoration(boxShadow: [BoxShadow(color: Color.fromARGB(255, 224, 223, 223),spreadRadius: 0.5,
              blurRadius: 12,offset: Offset(1,7))]),
                  child: GestureDetector(
                    onTap:(){
                      showBottomSheet();
                    } ,
                    child: Container(
                      height: 46,
                      width: 186,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration:const BoxDecoration(shape: BoxShape.circle,color: Color.fromRGBO(14,161,125,1)),
                            child:const Icon(Icons.add,color: Colors.white,size: 30,),
                                        
                          ),
                          Text("  Add Transaction",style:GoogleFonts.poppins(fontSize: 14))
                        ],
                                        
                      ),
                    )
                    ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
