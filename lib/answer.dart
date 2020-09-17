import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //Variables
  final String name;
  final Function func;

  //Constructor
  Answer(this.name, this.func);

  //build method
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(this.name),
        textColor: Colors.white,
        onPressed: this.func,
        color: Colors.blue,
      ),
    );
  }
}
