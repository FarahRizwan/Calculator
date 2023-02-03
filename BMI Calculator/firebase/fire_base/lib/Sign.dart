import 'package:fire_base/Login.dart';
import 'package:fire_base/Signup.dart';
import 'package:flutter/material.dart';

class SignUI extends StatefulWidget {
  const SignUI({super.key});

  @override
  State<SignUI> createState() => _SignUIState();
}

class _SignUIState extends State<SignUI> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
                flexibleSpace: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 180,
                    width: 170,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/tikka.jpeg"),
                            fit: BoxFit.cover),
                        border: Border.all(color: Colors.orange),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(400)),
                        shape: BoxShape.rectangle),
                  ),
                ),
                backgroundColor: Colors.white,
                elevation: 0,
                toolbarHeight: 190,
                bottom: TabBar(
                    indicatorWeight: 3,
                    labelStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    labelColor: Color.fromARGB(255, 255, 60, 0),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: Colors.deepOrange,
                    tabs: [
                      Tab(
                        text: "Sign Up",
                      ),
                      Tab(
                        text: "Sign In",
                      )
                    ])),
            body: TabBarView(children: [Signup(), Login()])),
      ),
    );
  }
}
