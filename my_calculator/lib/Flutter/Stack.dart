import 'package:flutter/material.dart';
//import 'package:my_calculator/Flutter/SignIn.dart';
import 'package:my_calculator/Flutter/yummies.dart';

class Stack1 extends StatelessWidget {
  Stack1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SafeArea(
          child: Stack(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Tabs(),
              ),
              Align(
                alignment: Alignment.bottomRight,
                widthFactor: 0.5,
                heightFactor: 0.5,
                child: Material(
                  borderRadius: const BorderRadius.all(Radius.circular(400)),
                  child: SafeArea(
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(400)),
                          image: DecorationImage(
                              image: AssetImage("images/food1.jpeg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
