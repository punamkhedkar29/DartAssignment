import 'dart:io';

import 'package:expense_manager/trash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
 
    int selectedIndex=0;

    List cardTitles = [
        "Food",
        "Fuel",
        "Medicine",
        "Shopping"
    ];

     List iconList = [
    "assets/food.png",
    "assets/fuel.png",
    "assets/medicine.png",
    "assets/shopping.png",
    "assets/enterntainment.png",
  ];

  List<Color> colorList = [
    const Color.fromRGBO(214, 3, 3, 0.7),
    const Color.fromRGBO(0, 148, 255, 0.7),
    const Color.fromRGBO(0, 174, 91, 0.7),
    const Color.fromRGBO(214, 38, 197, 0.7),
    const Color.fromRGBO(100, 62, 255, 0.7),
  ];

  XFile? selectedImage;
  

  TextEditingController urlController = TextEditingController();
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
              right: 20,
              left: 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children:[
                const SizedBox(
                  height: 30,
                ),

                Center(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap:()async{
                          ImagePicker imagePicker = ImagePicker();
                          selectedImage = await imagePicker.pickImage(source: ImageSource.gallery);

                          setState(() {
                            
                          });
                        },
                        child: Container(
                            height: 74,
                            width: 74,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(140, 128, 128, 0.2)
                            ),
                            child: selectedImage==null ? Image.asset("assets/imageHolder.png") : 
                    Image.file(File(selectedImage!.path)),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Text("Add",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),


                 Text("Image URL",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
            
                ),
                ),
                 const SizedBox(height: 10,),
                Container(
                  height: 45,
                  child: TextField(
              
                    controller: urlController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          ),
                      ),
                      hintText: "Enter URL",
                       hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey
                      )
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                Text("Category",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  
                ),
                ),
                 const SizedBox(height: 10,),
                Container(
                  height: 45,
                  //padding: EdgeInsets.only(top: 10),
                  child: TextField(
                    controller: categoryController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          
                        ),
                      ),
                      hintText: "Enter category name",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey
                      )
                    ),
                  ),
                ),
               
                      
                const SizedBox(height: 20,),
                      
                //Submit
                Center(
                  child: SizedBox(
                    height: 40,
                    width: 145,
                    child: ElevatedButton(
                      onPressed:(){
                        selectedImage=null;
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
  

  void _showDelete(BuildContext context, String cardTitle) {
    showDialog(
     
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        title: Center(child: Text('Delete Category',
        style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        )),
        content: Text("Are you sure you want to delete the selected category?",
        style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100,
                child: TextButton(
                  onPressed: () {
                    // Close the dialog without deleting
                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('"$cardTitle" deleted')),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Color.fromRGBO(14, 161, 125, 1)),
                  ),
                  child: Text('Delete',
                  style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
                  ),
                ),
              ),

              SizedBox(
            width: 100,
            child: TextButton(
              onPressed: () {
                // Perform the delete operation here
                // For now, just close the dialog
                Navigator.of(context).pop();
                
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Color.fromRGBO(140, 128, 128, 0.2)),
              ),
              child: Text('Cancel',
              style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
              ),
            ),
          ),
            ],
          ),
          
        ],
      ),
    );
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
        title: Text(
          "Categories",
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

      body:Column(
        children: [
          Expanded(
            child: 
              Padding(
                    padding:EdgeInsets.all(25),
                    child: GridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 25,
                            mainAxisSpacing: 25,
                            children: List.generate(cardTitles.length, (index){
                                return GestureDetector(
                                  onTap:(){
                                    _showDelete(context, cardTitles[index]);
                                  },
                                  child: Card(
                                      color: Colors.white,
                                      elevation: 4,
                                      child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                              children: [
                                                  Container(
                                                      height: 74,
                                                      width: 74,
                                                      decoration: BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          color: colorList[index]
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(18.0),
                                                        child: Image.asset(iconList[index], fit: BoxFit.contain,),
                                                      ),
                                                  ),
                                                  const SizedBox(height: 8,),
                                                  Text(cardTitles[index],
                                                      style: GoogleFonts.poppins(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w600
                                                      ) ,
                                                  )
                                              ],
                                          ),
                                      ),
                                  ),
                                );
                            }),
                        ), 
              
                        
                    ),
            
          ),

          Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
                child: Container(
                  decoration:const BoxDecoration(boxShadow: [BoxShadow(color: Color.fromARGB(255, 224, 223, 223),spreadRadius: 0.5,
              blurRadius: 12,offset: Offset(1,7))]),
                  child: GestureDetector(
                    onTap:(){
                      showBottomSheet();
                    } ,
                    child: Container(
                      height: 46,
                      width: 180,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
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
                          Text("  Add Category",style:GoogleFonts.poppins(fontSize: 14))
                        ],
                                        
                      ),
                    )
                    ),
                ),
              )
        ],
      ),

            
    );
  }
}