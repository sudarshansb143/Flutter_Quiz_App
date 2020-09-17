import 'package:flutter/material.dart';
import 'questions.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  var changeQuestion;
  var question;
  var count;

  Quiz(
      {@required this.changeQuestion,
      @required this.question,
      @required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          question[count]['question_text'],
        ),
        ...(question[count]['answer'] as List<Map<String, Object>>).map((x) {
          return Answer(x['text'], () => changeQuestion(x['score']));
        }).toList()
      ],
    );
  }
}


 
