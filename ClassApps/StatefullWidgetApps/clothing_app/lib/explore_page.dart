import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  List imageList = [
    "assets/model5.png",
    "assets/model4.png",
    
    "assets/model2.png",
    "assets/model3.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/menu.png"),
                Image.asset("assets/profile.png"),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Explore",
              style: GoogleFonts.imprima(
                fontSize: 36,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Best trendy collection!",
              style: GoogleFonts.imprima(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All",
                  style: GoogleFonts.imprima(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Men",
                  style: GoogleFonts.imprima(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Women",
                  style: GoogleFonts.imprima(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Kids",
                  style: GoogleFonts.imprima(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Other",
                  style: GoogleFonts.imprima(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: MasonryGridView.builder(
                gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  // Alternate pattern column-wise
                  bool isLargeBox = index % 2 == 0; // Large for even-indexed columns
                  return Container(
                    height: isLargeBox ? 200 : 150,
                    width: double.infinity,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                       
                    ),
                    child: ClipRRect(child: Image.asset(imageList[index], fit: BoxFit.cover, scale: 0.1,)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
