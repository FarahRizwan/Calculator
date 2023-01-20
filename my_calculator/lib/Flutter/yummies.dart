import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_calculator/Flutter/OurMenu.dart';
import 'package:my_calculator/Flutter/SignIn.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              toolbarHeight: 150,
              bottom: const TabBar(
                  indicatorWeight: 3,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Colors.deepOrange,
                  labelStyle: TextStyle(fontSize: 17),
                  labelColor: Colors.deepOrange,
                  tabs: [
                    Tab(
                      text: "Sign In",
                    ),
                    Tab(
                      text: "Sign Up",
                    )
                  ])),
          body: Signin()),
    );
  }
}
