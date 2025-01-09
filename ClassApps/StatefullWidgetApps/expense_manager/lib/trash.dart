import 'package:expense_manager/home_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrashPage extends StatefulWidget {
  const TrashPage({super.key});

  @override
  State<TrashPage> createState() => _TrashPageState();
}

class _TrashPageState extends State<TrashPage> {
  List<HomeModel> trashList = [
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

  int selectedIndex=3;

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
        title: Text(
          "Trash",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
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
              itemCount: trashList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                                          height: 18,
                                          width: 18,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:Color.fromARGB(255, 201, 199, 199)
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 16,
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
                                      trashList[index].category,
                                      style: GoogleFonts.poppins(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        
                                        const SizedBox(width: 10),
                                        Text(
                                          trashList[index].amount,
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
                                  trashList[index].description,
                                  style: GoogleFonts.poppins(fontSize: 14),
                                ),
                                 const SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      trashList[index].date,
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

           
          ],
        ),
      ),

    );
  }
}