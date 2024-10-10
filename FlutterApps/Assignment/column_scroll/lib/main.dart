import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network("https://www.google.com/imgres?q=flutter&imgurl=https%3A%2F%2Fcdn.prod.website-files.com%2F5ee12d8d7f840543bde883de%2F5ef3a1148ac97166a06253c1_flutter-logo-white-inset.svg&imgrefurl=https%3A%2F%2Fverygood.ventures%2Fflutter&docid=HZCy_5AvpD2afM&tbnid=fZ6WMG1nr5ooUM&vet=12ahUKEwihrb-HvfCIAxUOr1YBHSfYH2IQM3oECBoQAA..i&w=1200&h=1200&hcb=2&ved=2ahUKEwihrb-HvfCIAxUOr1YBHSfYH2IQM3oECBoQAA"),
              Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              ),
              Image.network("https://www.google.com/imgres?q=flutter&imgurl=https%3A%2F%2Fcdn.prod.website-files.com%2F5ee12d8d7f840543bde883de%2F5ef3a1148ac97166a06253c1_flutter-logo-white-inset.svg&imgrefurl=https%3A%2F%2Fverygood.ventures%2Fflutter&docid=HZCy_5AvpD2afM&tbnid=fZ6WMG1nr5ooUM&vet=12ahUKEwihrb-HvfCIAxUOr1YBHSfYH2IQM3oECBoQAA..i&w=1200&h=1200&hcb=2&ved=2ahUKEwihrb-HvfCIAxUOr1YBHSfYH2IQM3oECBoQAA"),
              Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              ),
              Image.network("https://www.google.com/imgres?q=flutter&imgurl=https%3A%2F%2Fcdn.prod.website-files.com%2F5ee12d8d7f840543bde883de%2F5ef3a1148ac97166a06253c1_flutter-logo-white-inset.svg&imgrefurl=https%3A%2F%2Fverygood.ventures%2Fflutter&docid=HZCy_5AvpD2afM&tbnid=fZ6WMG1nr5ooUM&vet=12ahUKEwihrb-HvfCIAxUOr1YBHSfYH2IQM3oECBoQAA..i&w=1200&h=1200&hcb=2&ved=2ahUKEwihrb-HvfCIAxUOr1YBHSfYH2IQM3oECBoQAA"),
              Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              ),
              Image.network("https://www.google.com/imgres?q=flutter&imgurl=https%3A%2F%2Fcdn.prod.website-files.com%2F5ee12d8d7f840543bde883de%2F5ef3a1148ac97166a06253c1_flutter-logo-white-inset.svg&imgrefurl=https%3A%2F%2Fverygood.ventures%2Fflutter&docid=HZCy_5AvpD2afM&tbnid=fZ6WMG1nr5ooUM&vet=12ahUKEwihrb-HvfCIAxUOr1YBHSfYH2IQM3oECBoQAA..i&w=1200&h=1200&hcb=2&ved=2ahUKEwihrb-HvfCIAxUOr1YBHSfYH2IQM3oECBoQAA"),
              Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              ),
              Image.network("https://www.google.com/imgres?q=flutter&imgurl=https%3A%2F%2Fcdn.prod.website-files.com%2F5ee12d8d7f840543bde883de%2F5ef3a1148ac97166a06253c1_flutter-logo-white-inset.svg&imgrefurl=https%3A%2F%2Fverygood.ventures%2Fflutter&docid=HZCy_5AvpD2afM&tbnid=fZ6WMG1nr5ooUM&vet=12ahUKEwihrb-HvfCIAxUOr1YBHSfYH2IQM3oECBoQAA..i&w=1200&h=1200&hcb=2&ved=2ahUKEwihrb-HvfCIAxUOr1YBHSfYH2IQM3oECBoQAA"),
              Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              ),
              Image.network("https://www.google.com/imgres?q=flutter&imgurl=https%3A%2F%2Fcdn.prod.website-files.com%2F5ee12d8d7f840543bde883de%2F5ef3a1148ac97166a06253c1_flutter-logo-white-inset.svg&imgrefurl=https%3A%2F%2Fverygood.ventures%2Fflutter&docid=HZCy_5AvpD2afM&tbnid=fZ6WMG1nr5ooUM&vet=12ahUKEwihrb-HvfCIAxUOr1YBHSfYH2IQM3oECBoQAA..i&w=1200&h=1200&hcb=2&ved=2ahUKEwihrb-HvfCIAxUOr1YBHSfYH2IQM3oECBoQAA"),
              Container([]
              height: 200,
              width: 200,
              color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}