import 'package:flutter/material.dart';
import 'package:to_do_list/todo_app_ui.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoAppUI(),
    );
  }
}

// class ToDoApp extends StatefulWidget{
//   const ToDoApp({super.key});
//   @override
//   State<ToDoApp> createState() => _ToDoApp();
// }

// class _ToDoApp extends State<ToDoApp>{
//   TextEditingController controller1 = TextEditingController();
//   TextEditingController controller2 = TextEditingController();
//   TextEditingController controller3 = TextEditingController();
//   List<Map> newList = [];
//   int index1 = -1;
//   int x = -1;


//   void openBottomSheet() {
//     showModalBottomSheet(
//         context: context,
//         builder: (context) {
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 decoration: const BoxDecoration(
//                 border: Border(
//                 bottom: BorderSide(width: 1, color: Colors.black))),
//                 child: const Center(
//                   child: Text(
//                     "Create To-Do",
//                     style: TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black
//                         ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 padding: const EdgeInsets.only(left: 20),
//                 child: const Text(
//                   "Title:",
//                   style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 7, 177, 189),
//                       ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.only(left: 20, right: 20),
//                 child: TextField(
//                   controller: controller1,
//                   decoration: const InputDecoration(
//                       hintText: "Add Title",
//                       hintStyle: TextStyle(color: Colors.grey),
//                       border: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.black, width: 2))),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 padding: const EdgeInsets.only(left: 20),
//                 child: const Text(
//                   "Description:",
//                   style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 7, 177, 189),
//                       ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.only(left: 20, right: 20),
//                 child: TextField(
//                     controller: controller2,
//                     decoration: const InputDecoration(
//                       hintText: "Add Description",
//                       hintStyle: TextStyle(color: Colors.grey),
//                       border: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.black, width: 2)),
//                     )
//                   ),
//               ),

//               const SizedBox(
//                 height: 30,
//               ),
//               Row(
//                 children: [
//                   const SizedBox(
//                     width: 55,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       newList.add(
//                         {
//                           "title": controller1.text,
//                           "description": controller2.text
//                         }
//                       );
//                       if (index1 < 3) {
//                         index1++;
//                       } else {
//                         index1 = 0;
//                       }
//                       controller1.clear();
//                       controller2.clear();
//                       setState(() {});
//                     },
//                     child: Container(
//                       padding: const EdgeInsets.only(left: 20),
//                       height: 50,
//                       width: 300,
//                       decoration: const BoxDecoration(
//                           color: Color.fromARGB(255, 7, 177, 189),
//                           borderRadius: BorderRadius.all(Radius.circular(20))),
//                       child: const Center(
//                         child: Text(
//                           "Submit",
//                           style: TextStyle(fontSize: 20, color: Colors.white),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           );
//         });
//   }
//   @override
//   Widget build(BuildContext context){
    
//     List<Color?> colorList = [
//     const Color.fromARGB(255, 242, 210, 221),
//     const Color.fromARGB(255, 179, 216, 246),
//     const Color.fromARGB(255, 246, 241, 200),
//     const Color.fromARGB(255, 226, 187, 240),
//   ];
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "To-do list",
//           style: TextStyle(
//             fontSize: 26,
//             fontWeight: FontWeight.w700,
//             color: Colors.white,
//           ),    
//         ),
//         backgroundColor:const Color.fromARGB(255, 7, 177, 189),
//       ),
//       body: ListView.builder(
//         itemCount: newList.length,
//         shrinkWrap: true,
//         itemBuilder: (context, index){
//           Color? containerColor = colorList[index%colorList.length];
//           return Padding(
//             padding:const EdgeInsets.all(10),
//             child: Container(
//               height: 150,
//               width: 300,
//               padding: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: containerColor,
//               ),
//               child: Row(
//                 children:[
//                   Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Container(
//                           width: 52,
//                           height: 52,
//                           decoration: const BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Colors.white,
//                           ),
//                           child: const SizedBox(
//                             height: 19.07,
//                             width: 23.79,
//                             child:Icon(Icons.image),
//                           ),
//                         ),
//                       ),
//                       const Text(
//                         "10 July 2023",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 12
//                         ),
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Column(
//                       children: [
//                         Text(
//                           "${newList[index]["title"]}",
//                           style: const TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w600
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 8,
//                         ),
//                         Text(
//                           "${newList[index]["description"]}",
//                           style: const TextStyle(
//                             fontSize: 11,
//                           ),
//                         ),
//                         const Row(
//                           children:[
//                             SizedBox(
//                               width: 180,
//                             ),
//                             Icon(Icons.edit),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Icon(Icons.delete)
//                           ]
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ), 
//             ), 
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           openBottomSheet();
//           setState(() {});
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }



