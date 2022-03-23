import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State createState() => _State();
}

class _State extends State<MyApp> {
  List questions = [
    {
      "question": "Which country is called the land of the rising sun?",
      "option_a": "Australia",
      "option_b": "United States",
      "option_c": "Japan",
      "option_d": "New Zealand",
      "answer": "Japan",
    },
    {
      "question": "How many Colors in Google Logo?",
      "option_a": "4",
      "option_b": "3",
      "option_c": "5",
      "option_d": "6",
      "answer": "4",
    },
    {
      "question": "Which month of the year has only 28 days?",
      "option_a": "March",
      "option_b": "June",
      "option_c": "December",
      "option_d": "February",
      "answer": "February",
    },
    {
      "question": "What do humans breathe to survive?",
      "option_a": "Oxygen",
      "option_b": "Helium",
      "option_c": "CO2",
      "option_d": "Nitrogen",
      "answer": "Oxygen",
    },
    {
      "question": "Which animal is known as the king of the jungle?",
      "option_a": "Lion",
      "option_b": "Tiger",
      "option_c": "Cheeta",
      "option_d": "Elephant",
      "answer": "Lion",
    },
  ];

  var rightAnswerCount = 0;
  var wrongAnswerCount = 0;
  var currentIndex = 0;

  validateAnswer(userInput) {
    if (currentIndex < questions.length - 1) {
      if (userInput == questions[currentIndex]["answer"]) {
        setState(() {
          rightAnswerCount += 1;
          currentIndex += 1;
        });
      } else {
        setState(() {
          wrongAnswerCount += 1;
          currentIndex += 1;
        });
      }
    }
  }

  reset() {
    setState(() {
      rightAnswerCount = 0;
      wrongAnswerCount = 0;
      currentIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                color: Colors.white,
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                child: Text(
                  "${questions[currentIndex]['question']}",
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      elevation: 0,
                    ),
                    onPressed: () {
                      validateAnswer(questions[currentIndex]['option_a']);
                    },
                    child: Text("${questions[currentIndex]['option_a']}")),
              ),
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      elevation: 0,
                    ),
                    onPressed: () {
                      validateAnswer(questions[currentIndex]['option_b']);
                    },
                    child: Text("${questions[currentIndex]['option_b']}")),
              ),
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      elevation: 0,
                    ),
                    onPressed: () {
                      validateAnswer(questions[currentIndex]['option_c']);
                    },
                    child: Text("${questions[currentIndex]['option_c']}")),
              ),
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      elevation: 0,
                    ),
                    onPressed: () {
                      validateAnswer(questions[currentIndex]['option_d']);
                    },
                    child: Text("${questions[currentIndex]['option_d']}")),
              ),
              SizedBox(height: 60),
              Text(
                  "Total: ${questions.length} - Right: ${rightAnswerCount} Wrong: ${wrongAnswerCount}",
                  style: TextStyle(color: Colors.white)),
              SizedBox(height: 12),
              TextButton(
                  onPressed: () {
                    reset();
                  },
                  child: Text("Reset")),
            ]),
      ),
    ));
  }
}
