import "package:flutter/material.dart";
import '../utils/question.dart';
import '../utils/quiz.dart';
import '../UI/answer_button.dart';

class QuizPage extends StatefulWidget
{
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage>
{
  @override
  Widget build(BuildContext context){
    return new Stack(
      children: <Widget>[
        new Column(   //this is our main page
            children: <Widget>[
              new AnswerButton(true, ()=> print("you answered true")),
              new Material(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:20.0),
                  child: new Center(
                    child: new Text("Text 1: Pizza is nice")
                  ),
                )
              ),
              new AnswerButton(false, () =>print("You entered false")),
            ],
        ),
      ],
    );
  }
}