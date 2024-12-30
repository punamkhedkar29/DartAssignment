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
  List<Map> images=[
    {
      "image":"https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_800,q_50/lsci/db/PICTURES/CMS/381100/381128.jpg",
      "name": "M.S.Dhoni"
    },
    {
      "image":"https://img.etimg.com/thumb/width-640,height-480,imgsize-38134,resizemode-75,msid-111375333/news/sports/t20-world-cup-final-virat-kohli-bags-player-of-the-match-here-is-full-list-of-awards-and-cash-prize.jpg",
      "name":"Virat Kohli"
    },
    {
      "image":"https://images.news18.com/ibnlive/uploads/2024/07/rohit-sharma-1-2024-07-f31b2b81746e93de6ab1c683fc455ff0.jpg?impolicy=website&width=640&height=480",
      "name":"Rohit Sharma"
    },
    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlrPFOm1ty1y0pPokV6gOwTVwjl0vnfSuOc1iO__gIVgdCBjeRD5N-oGLk0joFNUKEnJI&usqp=CAU",
      "name":"Sachin Tendulkar"
    },
  ];
  int index=0;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Indian Cricketers",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
                width: 250,
                child: Image.network(images[index]["image"],
                fit: BoxFit.cover,
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
              Text("${images[index]["name"]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
              ),
            ],
          ),
          ),
        floatingActionButton: Row(
          children: [
            const Padding(padding: EdgeInsets.only(right: 50)),
            FloatingActionButton(
              onPressed: () {
                if(index < images.length+1){
                  index--;
                } else{
                  if(index==0){
                    index=images.length-1;
                  };
                }
                setState(() {});
              },
              backgroundColor: Colors.blue,
              child: const Icon(Icons.arrow_back_ios_sharp),
              ),
              const Padding(padding: EdgeInsets.only(right: 215)),
              FloatingActionButton(
              onPressed: () {
                if(index < images.length-1){
                  index++;
                } else{
                  index=0;
                }
                setState(() {});
              },
              backgroundColor: Colors.blue,
              child: const Icon(Icons.arrow_forward_ios_sharp),
              ),
          ],
        ),
      ),
    );
  }
}