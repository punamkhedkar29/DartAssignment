import 'package:flutter/material.dart';
void main(){
  runApp(const ToggleColor());
}

class ToggleColor extends StatefulWidget{
  const ToggleColor({super.key});
  @override
  State<ToggleColor> createState() => _ToggleColor();
}

class _ToggleColor extends State<ToggleColor>{
  List images=[
    "https://cdn.britannica.com/25/222725-050-170F622A/Indian-cricketer-Mahendra-Singh-Dhoni-2011.jpg",
    "https://s3-ap-southeast-1.amazonaws.com/scrollstorage/1420535054-1220_Rohit-Sharma.jpg",
    "https://static.toiimg.com/thumb/msid-104362087,width-400,resizemode-4/104362087.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlrPFOm1ty1y0pPokV6gOwTVwjl0vnfSuOc1iO__gIVgdCBjeRD5N-oGLk0joFNUKEnJI&usqp=CAU",
    "https://www.india.com/wp-content/uploads/2023/11/MixCollage-17-Nov-2023-06-27-PM-5746.jpg",
  ];
  int index=0;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Player Image Toggle"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: SizedBox(
            height: 150,
            width: 150,
            child: Image.network(images[index]),
          ),
          ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if(index < images.length-1){
              index++;
            } else{
              index=0;
            }
            setState(() {});
          },
          backgroundColor: Colors.blue,
          child: const Text("Toggle"),
          ),
      ),
    );
  }
}