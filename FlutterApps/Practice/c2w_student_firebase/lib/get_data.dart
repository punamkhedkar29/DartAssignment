import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:c2w_student_firebase/add_data.dart';

class GetData extends StatefulWidget {
  const GetData({super.key});

  @override
  State<GetData> createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  List studData=[];

  void initState(){
    super.initState();
    fetchData();
  }

  void fetchData() async {
     QuerySnapshot response = await FirebaseFirestore.instance.collection("c2w_Student_Data").get();
      studData=response.docs;
      log("Response : ${response.docs}");
      setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text("C2W Students"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: studData.length ,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                FirebaseFirestore.instance.collection("c2w_Student_Data").doc(studData[index].id).delete();
                studData.removeAt(index);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Data has been deleted"))
                );
                setState(() {
                  
                });
              },
              child: Container(
                height: 140,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10,),
                    Text("Student Name : ${studData[index]["name"]}"),
                    const SizedBox(height: 15,),
                    Text("Student College : ${studData[index]["clg"]}"),
                    const SizedBox(height: 15,),
                    Text("Student Course : ${studData[index]["course"]}"),
                    const SizedBox(height: 15,),
                  ],
                ),
              ),
            ),
          );
        } 
        ),
    );
  }
}