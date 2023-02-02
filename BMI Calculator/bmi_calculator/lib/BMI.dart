import 'dart:js_util';
import 'dart:ui';

import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        backgroundColor: Color.fromARGB(90, 46, 43, 43),
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 134, 27, 20)),
                  child: Column(
                    children: [
                      Icon(
                        Icons.male,
                        size: 120,
                        color: Colors.white,
                      ),
                      Text(
                        "Male",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(90, 46, 43, 43),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Icon(
                        Icons.female,
                        size: 120,
                        color: Colors.white,
                      ),
                      Text(
                        "Female",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            width: 350,
            decoration: BoxDecoration(
                color: Color.fromARGB(90, 46, 43, 43),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Text(
                  "HEIGHT",
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "134",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    Text(
                      "cm",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
