import "package:flutter/material.dart";

class QuestionText extends StatefulWidget {
  final String _question;
  final int _questionNumber;

  QuestionText(this._question, this._questionNumber);
  @override
  State createState() => new QuestionTextState();
}

class QuestionTextState extends State<QuestionText>
    with SingleTickerProviderStateMixin {
  Animation<double> _fontSizeAnimation;
  AnimationController _fontAnimationController;
  @override
  void initState() {
    super.initState();
    _fontAnimationController = new AnimationController(duration: const Duration(milliseconds: 2000), vsync: this);
    _fontSizeAnimation = new CurvedAnimation(parent: _fontAnimationController, curve: Curves.bounceOut);
    _fontSizeAnimation.addListener(()=> this.setState(() {}));
    _fontAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: new Center(
              child: new Text("Statement " +
                  widget._questionNumber.toString() +": " + widget._question,
                  style: new TextStyle(fontSize: _fontSizeAnimation.value * 15),
                  ),
                  )
        ),
        );
  }
}
