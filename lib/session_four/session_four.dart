import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class SessionFour extends StatefulWidget {
  const SessionFour({super.key});

  @override
  State<SessionFour> createState() => _SessionFourState();
}

class _SessionFourState extends State<SessionFour> {
  var userInput = "";
  var answer = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child:

            Padding(
              padding: const EdgeInsets.only(top: 30,right: 10),
              child: Align(
                alignment: Alignment.bottomRight,

                child: Column(children: [

                  Text(userInput.toString(),style: TextStyle(color: Colors.white,fontSize: 30,),),

                  Text(answer.toString(),style: TextStyle(color: Colors.white,fontSize: 30,))]),
              ),
            )),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyButton(
                        title: "AC",
                        color: Color(0xffffa00a),
                        onpress: () {
                          userInput=' ';
                          answer =' ';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: "+/-",
                        color: Color(0xffffa00a),
                        onpress: () {
                          userInput+='+/-';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: "%",
                        color: Color(0xffffa00a),
                        onpress: () {
                          userInput+='%';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: "/",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput+='/';
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyButton(
                        title: "7",
                        color: Color(0xffffa00a),
                        onpress: () {
                          userInput+='7';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: "8",
                        color: Color(0xffffa00a),
                        onpress: () {
                          userInput+='8';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: "9",
                        color: Color(0xffffa00a),
                        onpress: () {
                          userInput+='9';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: "X",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput+='x';
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyButton(
                        title: "4",
                        color: Color(0xffffa00a),
                        onpress: () {
                          userInput+='4';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: "5",
                        color: Color(0xffffa00a),
                        onpress: () {
                          userInput+='5';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: "6",
                        color: Color(0xffffa00a),
                        onpress: () {
                          userInput+='6';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: "-",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput+='-';
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyButton(
                        title: "1",
                        color: Color(0xffffa00a),
                        onpress: () {
                          userInput+='1';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: "2",
                        color: Color(0xffffa00a),
                        onpress: () {
                          userInput+='2';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: "3",
                        color: Color(0xffffa00a),
                        onpress: () {
                          userInput+='3';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: "+",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput+='+';
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyButton(
                        title: "0",
                        color: Color(0xffffa00a),
                        onpress: () {
                          userInput+='0';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: ".",
                        color: Color(0xffffa00a),
                        onpress: () {
                          userInput+='.';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: "DEL",
                        color: Color(0xffffa00a),
                        onpress: () {
                          userInput =userInput.substring(0,userInput.length-1);
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: "=",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          equalPress();
                          setState(() {

                          });

                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void equalPress(){
    String finalUserInput= userInput;
    finalUserInput= finalUserInput.replaceAll('x', '*');

    Parser p =Parser();

    Expression expression=p.parse(finalUserInput);
    ContextModel contextModel= ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
//0xffffa00a

class MyButton extends StatelessWidget {
  String title;
  Color color;
  VoidCallback onpress;
  MyButton({
    super.key,
    required this.title,
    required this.color,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }
}
