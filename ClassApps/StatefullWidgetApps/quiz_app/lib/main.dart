import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp>{
  List<Map> questionSet= [
    {
      "question" : "Who is the founder of Flutter language?",
      "options" : ["Dennis Ritchie","Navneet Dalal ","James Gosling","Guido van Rossum"],
      "answer" : 1
    },
    {
      "question" : "Who is the founder of CPP language?",
      "options" : ["Bjarne Stroustrup","James Gosling","Dennis Ritchie","Guido van Rossum"],
      "answer" : 0
    },
    {
      "question" : "Who is the founder of Java language?",
      "options" : ["Dennis Ritchie","Guido van Rossum","Bjarne Stroustrup","James Gosling"],
      "answer" : 3
    },
    {
      "question" : "Who is the founder of Python language?",
      "options" : ["Bjarne Stroustrup","Dennis Ritchie","Guido van Rossum","James Gosling"],
      "answer" : 2
    },
    {
      "question" : "Who is the founder of C language?",
      "options" : ["Dennis Ritchie","Navneet Dalal","James Gosling","Guido van Rossum"],
      "answer" : 0
    },
  ];

  int currentIndex = 0;
  int selectedAnswerIndex = -1;

  bool questionpage=true;
  WidgetStateProperty<Color?> currentOption(int answerIndex){
      if(selectedAnswerIndex!=-1){
        if(answerIndex==questionSet[currentIndex]["answer"]){
          return const WidgetStatePropertyAll(Colors.green);
        }else if(selectedAnswerIndex==answerIndex){
          return const WidgetStatePropertyAll(Colors.red);
        }else{
          return const WidgetStatePropertyAll(null);
        }

      }else{
        return const WidgetStatePropertyAll(null);
      }
  }

  int count=0;
  int? countAnswer(){
    if(selectedAnswerIndex==questionSet[currentIndex]["answer"]){
        return count++;
    }

  }

  @override
  Widget build(BuildContext context){
    return isQuestionScreen();
  }
  Scaffold isQuestionScreen(){
    if(questionpage==true){
      return Scaffold(
          appBar:AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                  const SizedBox(
                    width: 110,
                  ),
                Text(
                  "Question: ${currentIndex+1}/${questionSet.length}",
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 380,
              height: 50,
              child: Text(
                questionSet[currentIndex]["question"],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 300,
              height: 40,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: currentOption(0)),
                onPressed: () {
                  if(selectedAnswerIndex == -1){
                  selectedAnswerIndex=0;
                  setState(() { });
                  }
                  countAnswer();
                },
                child: Text(
                  questionSet[currentIndex]["options"][0],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 300,
              height: 40,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: currentOption(1)),
                onPressed: () { 
                  if(selectedAnswerIndex == -1){
                  selectedAnswerIndex=1;
                  setState(() { });
                  }
                  countAnswer();
                },
                child: Text(
                  questionSet[currentIndex]["options"][1],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 300,
              height: 40,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: currentOption(2)),
                onPressed: () { 
                  if(selectedAnswerIndex == -1){
                  selectedAnswerIndex=2;
                  setState(() { });
                  }
                  countAnswer();
                },
                child: Text(
                  questionSet[currentIndex]["options"][2],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 300,
              height: 40,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: currentOption(3)),
                onPressed: () { 
                  if(selectedAnswerIndex == -1){
                  selectedAnswerIndex=3;
                  setState(() { });
                  }
                  countAnswer();
                },
                child: Text(
                  questionSet[currentIndex]["options"][3],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: Row(
          children: [
             const SizedBox(
              width: 45,
            ),
            FloatingActionButton(
          onPressed: () {
            if (currentIndex > 0) {
          setState(() {
            currentIndex--;
            // When going back, retain the selected answer for the previous question
            selectedAnswerIndex = selectedAnswerIndex == -1
                ? -1
                : selectedAnswerIndex;
          }
          );
          }
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.orange,
            ),
        ),
        const SizedBox(
          width: 220,
        ),
        FloatingActionButton(
          onPressed: () {
            if(selectedAnswerIndex == -1){

            }else{
              if(currentIndex < questionSet.length-1){
                currentIndex++;
                selectedAnswerIndex=-1;
              }else{
                questionpage=false;
              }
              setState(() { });
            }
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.arrow_forward_ios_sharp,
            color: Colors.orange,
            ),
        ),
          ]
        )
      );   
    }else{
      return Scaffold(
        appBar:AppBar(
          title: const Text(
            "Result",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
                width: 80,
                height: 80,
                color: Colors.white,
                child: Image.network("https://www.google.co.in/imgres?q=trophy%20images&imgurl=https%3A%2F%2Fpng.pngtree.com%2Fpng-clipart%2F20190516%2Foriginal%2Fpngtree-realistic-trophy-gold-cup-png-image_3696414.jpg&imgrefurl=https%3A%2F%2Fpngtree.com%2Fso%2Ftrophy&docid=B9ELGDYK7fPWMM&tbnid=f3XoxhDl8j90aM&vet=12ahUKEwj9w7e9yuWIAxX7RWwGHQLSHYQQM3oFCIQBEAA..i&w=1200&h=1200&hcb=2&ved=2ahUKEwj9w7e9yuWIAxX7RWwGHQLSHYQQM3oFCIQBEAA"),
              ),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              height: 40,
              child: Text(
                "Congratulations!!!",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                  const SizedBox(
                    width: 110,
                  ),
                Text(
                  "Score: $count/${questionSet.length}",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 100,
              height: 40,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: currentOption(1)),
                onPressed: () { 
                  selectedAnswerIndex=-1;
                  currentIndex=0;
                  questionpage=true;
                  count=0;
                  setState(() { });
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
  
}