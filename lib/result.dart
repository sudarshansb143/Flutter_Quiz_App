import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result({this.totalScore, this.resetQuiz});

  String get personality {
    String resultText;
    if (totalScore <= 10) {
      resultText = "You are awesome";
    } else if (totalScore <= 15) {
      resultText = "You are likable";
    } else if (totalScore <= 20) {
      resultText = "You are Strange !!!!";
    } else {
      resultText = "Your are bad !!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            personality,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("Reset Quiz"),
            onPressed: resetQuiz,
            color: Colors.blue,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
