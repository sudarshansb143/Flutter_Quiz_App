// Imports
import 'package:flutter/material.dart';
import 'quiz.dart';
import './result.dart';

void main() {
//Main Dart Function
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var count = 0;
  int _total_score = 0;

  var question = [
    {
      'question_text': 'How often do you goto gym ?',
      'answer': [
        {
          'text': 'once',
          'score': 1,
        },
        {'text': 'two_times', 'score': 6},
        {
          'text': 'thrice',
          'score': 8,
        },
        {
          'text': 'never',
          'score': 0,
        }
      ]
    },
    {
      'question_text': 'Which is favourite color?',
      'answer': [
        {'text': 'black', 'score': 1},
        {'text': 'white', 'score': 6},
        {'text': 'orange', 'score': 5},
        {'text': 'grey', 'score': 4}
      ]
    },
    {
      'question_text': 'Which is favourite animal?',
      'answer': [
        {'text': 'Elephant', 'score': 1},
        {'text': 'Lion', 'score': 9},
        {'text': 'Tiger', 'score': 7},
        {'text': 'Peacock', 'score': 6}
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      count = 0;
      _total_score = 0;
    });
  }

  void changeQuestion(int temp_score) {
    _total_score += temp_score;

    setState(() {
      count++;
    });
    print(count);
  }

  //Raised Button Function
  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Quiz App")),
        body: count < question.length
            ? Quiz(
                changeQuestion: changeQuestion,
                question: question,
                count: count)
            : Result(
                totalScore: _total_score,
                resetQuiz: _resetQuiz,
              ),
      ),
    );
  }
}
