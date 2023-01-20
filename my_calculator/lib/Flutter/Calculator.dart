// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_calculator/Components/my_buttons.dart';
import 'package:math_expressions/math_expressions.dart';

// ignore: camel_case_types
class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

// ignore: camel_case_types
class _calculatorState extends State<calculator> {
  var userInput = "";

  var answer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userInput.toString(),
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        answer.toString(),
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        myButtons(
                          title: "AC",
                          onpress: (() {
                            userInput = "";
                            answer = "";
                            setState(() {});
                          }),
                        ),
                        myButtons(
                          title: ".",
                          onpress: () {
                            userInput += ".";

                            setState(() {});
                          },
                        ),
                        myButtons(
                          title: "%",
                          onpress: () {
                            userInput += "%";
                            setState(() {});
                          },
                        ),
                        myButtons(
                          title: "/",
                          onpress: () {
                            userInput += "/";
                            setState(() {});
                          },
                          color: Colors.orange,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        myButtons(
                          title: "7",
                          onpress: () {
                            userInput += "7";
                            setState(() {});
                          },
                        ),
                        myButtons(
                          title: "8",
                          onpress: () {
                            userInput += "8";
                            setState(() {});
                          },
                        ),
                        myButtons(
                          title: "9",
                          onpress: () {
                            userInput += "9";
                            setState(() {});
                          },
                        ),
                        myButtons(
                          title: "x",
                          onpress: () {
                            userInput += "x";
                            setState(() {});
                          },
                          color: Colors.orange,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        myButtons(
                          title: "4",
                          onpress: (() {
                            userInput += "4";
                            setState(() {});
                          }),
                        ),
                        myButtons(
                          title: "5",
                          onpress: () {
                            userInput += "5";
                            setState(() {});
                          },
                        ),
                        myButtons(
                          title: "6",
                          onpress: () {
                            userInput += "6";
                            setState(() {});
                          },
                        ),
                        myButtons(
                          title: "-",
                          onpress: () {
                            userInput += "-";
                            setState(() {});
                          },
                          color: Colors.orange,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        myButtons(
                          title: "1",
                          onpress: (() {
                            userInput += "1";
                            setState(() {});
                          }),
                        ),
                        myButtons(
                          title: "2",
                          onpress: () {
                            userInput += "2";
                            setState(() {});
                          },
                        ),
                        myButtons(
                          title: "3",
                          onpress: () {
                            userInput += "3";
                            setState(() {});
                          },
                        ),
                        myButtons(
                          title: "+",
                          onpress: () {
                            userInput += "+";
                            setState(() {});
                          },
                          color: Colors.orange,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        myButtons(
                          title: "0",
                          onpress: (() {
                            userInput += "0";
                            setState(() {});
                          }),
                        ),
                        myButtons(
                          title: "00",
                          onpress: () {
                            userInput += "00";
                            setState(() {});
                          },
                        ),
                        myButtons(
                          title: "DEL",
                          onpress: () {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                            setState(() {});
                          },
                        ),
                        myButtons(
                          title: "=",
                          onpress: () {
                            equalpress();
                            setState(() {});
                          },
                          color: Colors.orange,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void equalpress() {
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll("x", "*");
    //finalUserInput = userInput.replaceAll("%", "/100");
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
