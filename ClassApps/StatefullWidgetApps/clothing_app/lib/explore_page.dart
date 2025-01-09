import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/menu.png"),
                  Image.asset("assets/profile.png")
                ],
              ),
              SizedBox(height: 20,),
              Text("Explore",
                style: GoogleFonts.imprima(
                  fontSize: 36,
                  fontWeight: FontWeight.w500
                )
              ),
              //SizedBox(height: 5,),
              Text("Best trendy collection!",
              style: GoogleFonts.imprima(
                  fontSize: 18,
                  fontWeight: FontWeight.w400
                )
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("All",
                  style: GoogleFonts.imprima(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                )
                  ),
                  Text("Men",
                  style: GoogleFonts.imprima(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                )),
                  Text("Women",
                  style: GoogleFonts.imprima(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                )
                  ),
                  Text("Kids",
                  style: GoogleFonts.imprima(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                )
                  ),
                  Text("Other",
                  style: GoogleFonts.imprima(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                )
                  )
                ],
              ),

              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent:200,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 3/4
                    ) , 
                  itemCount: 8,
                  itemBuilder: (context,index){
                      bool isLargeBox = index % 4 == 0 || index % 4 == 3;
                      // if(index %4==0 || index % 4==3){
                      //   isLargeBox=true;
                      // }else{
                      //   isLargeBox=false;
                      // }
                      return Container(
                        height: isLargeBox ? 150 : 75,
                        width: isLargeBox ? 120 : 75,
                        child: Image.asset("assets/model2.png",fit: BoxFit.cover,),
                      );
                  }
                  
                  ),
              )
            ],
          ),
        ),
    );
  }
}