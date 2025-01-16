import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:inherited_widget_demo/view/view_data.dart';

class GetData extends StatefulWidget {
  const GetData({super.key});

  @override
  State<GetData> createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  List getData = [];

  @override
  void initState(){
    super.initState();
    
    getdatafirebase();
  }

  void getdatafirebase() async{
    QuerySnapshot response = await FirebaseFirestore.instance.collection("LoginData").get();
    getData=response.docs;
    setState(() {
      
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView.builder(
                itemCount: getData.length,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 80,
                      //width: 200,
                      decoration: BoxDecoration(
                        border: Border.all()
                      ),
                      child: Column(
                        children: [
                          Text("Username: ${getData[index]['username']}"),
                          const SizedBox(height: 10,),
                          Text("Password: ${getData[index]['password']}"),
                          const SizedBox(height: 10,)
                        ],
                      ),
                    ),
                  );
                }
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return const ViewData();
          }));
        },
        backgroundColor: Colors.amber,
        child: const Center(
          child: Icon(Icons.add),
        ), 
          
      ),
    );
  }
}