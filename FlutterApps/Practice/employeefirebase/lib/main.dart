import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:employeefirebase/EmployeeModel.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAGWCgzqms3GxiHMsYjEfDKs0oP0G3yVi4",
      appId: "1:917436974336:android:554e26b2e61eb765c89fe5",
      messagingSenderId: "917436974336",
      projectId: "employeeinfo-688e1",
    ),
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EmployeeFirebase(),
    );
  }
}

class EmployeeFirebase extends StatefulWidget {
  const EmployeeFirebase({super.key});

  @override
  State<EmployeeFirebase> createState() => _EmployeeFirebaseState();
}

class _EmployeeFirebaseState extends State<EmployeeFirebase> {
  TextEditingController empNameController = TextEditingController();
  TextEditingController empSalController = TextEditingController();
  TextEditingController devTypeController = TextEditingController();

  List<EmployeeModel> employeeList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee Data"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: empNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Employee Name",
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: empSalController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Employee Salary",
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: devTypeController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Employee Dev Type",
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Map<String, dynamic> data = {
                  "empName": empNameController.text,
                  "empSal": empSalController.text,
                  "devType": devTypeController.text,
                };
                FirebaseFirestore.instance.collection("EmployeeData").add(data);
              },
              child: Container(
                height: 40,
                width: 100,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Center(
                  child: Text(
                    "Add Data",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                QuerySnapshot response =
                    await FirebaseFirestore.instance.collection("EmployeeData").get();

                if (response.docs.isNotEmpty) {
                  EmployeeModel? highestPaidEmployee;

                  for (dynamic val in response.docs) {
                    final data = val.data();
                    double salary = double.tryParse(data['empSal']) ?? 0.0;

                    if (highestPaidEmployee == null ||
                        salary > double.parse(highestPaidEmployee.empSal)) {
                      highestPaidEmployee = EmployeeModel(
                        empName: data['empName'],
                        empSal: data['empSal'],
                        devType: data['devType'],
                      );
                    }
                  }
                  setState(() {
                    employeeList.clear();
                    if (highestPaidEmployee != null) {
                      employeeList.add(highestPaidEmployee);
                    }
                  });

                  log("Highest Paid Employee: ${highestPaidEmployee?.empName}");
                }
              },
              child: Container(
                height: 40,
                width: 100,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Center(
                  child: Text(
                    "Get Data",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: employeeList.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Column(
                      children: [
                        Text("Employee Name: ${employeeList[index].empName}"),
                        const SizedBox(height: 10),
                        Text("Employee Salary: ${employeeList[index].empSal}"),
                        const SizedBox(height: 10),
                        Text("Employee Dev Type: ${employeeList[index].devType}"),
                      ],
                    ),
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
