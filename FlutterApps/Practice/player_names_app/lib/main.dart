import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:player_names_app/player_model.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase App',
      home: const PlayerScreen(),
    );
  }
}

class PlayerScreen extends StatefulWidget{
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen>{
  
  TextEditingController playerNameTextController=TextEditingController();
  TextEditingController jerNoTextController = TextEditingController();

  List<PlayerModel> playerList=[];
  
  @override
  Widget build(BuildContext build){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          
          "Firebase Player App",
          style: TextStyle(
            fontSize: 25,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),

          //Player Name
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: playerNameTextController,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                hintText: "Enter Player Name",
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
              ),
            ), 
          ),

            //Plyer Jersey No
            Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: jerNoTextController,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                hintText: "Enter Player Jersey No.  ",
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ), 
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              if(playerNameTextController.text.trim().isNotEmpty && jerNoTextController.text.trim().isNotEmpty){
                Map<String, dynamic> data = {
                  "playerName": playerNameTextController.text.trim(),
                  "jerNo" : jerNoTextController.text.trim(),
                };

                FirebaseFirestore.instance.collection("playersInfo").add(data);
                playerNameTextController.clear();
                jerNoTextController.clear();

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Data Added"),
                    ),
                );
              }else{
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Invalid Data"),
                    ),
                );
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "Add Data",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          

        ],
      ),
    );
  }
}
