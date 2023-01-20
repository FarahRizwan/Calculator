// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_calculator/Components/BotNav.dart';
import 'package:my_calculator/Components/Container2.dart';
import 'package:my_calculator/Flutter/Review.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            shadowColor: Colors.black,
            elevation: 3,
            backgroundColor: Colors.white,
            leading: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Badge(
                  shape: BadgeShape.circle,
                  stackFit: StackFit.loose,
                  showBadge: true,
                  badgeContent: const Text("1"),
                  badgeColor: Colors.deepOrange,
                  toAnimate: true,
                  animationType: BadgeAnimationType.scale,
                  child: Icon(
                    Icons.shopping_cart,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              )
            ],
            centerTitle: true,
            title: Text(
              "Our Menu",
              style: GoogleFonts.varelaRound(
                  textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            bottom: const TabBar(
                indicatorWeight: 2,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.deepOrange,
                unselectedLabelColor: Colors.black,
                labelStyle:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                labelColor: Colors.deepOrange,
                tabs: [
                  Tab(
                    text: "Meals",
                  ),
                  Tab(
                    text: "Sides",
                  ),
                  Tab(
                    text: "Snacks",
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Tab(
                        icon: Icon(
                      Icons.arrow_forward,
                      size: 20,
                    )),
                  ),
                ])),
        body: SingleChildScrollView(
          child: Row(
            children: [
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: OurMenu(
                      image: AssetImage("images/noodles.jpeg"),
                      title: "Spicy Noodles",
                      text: "N1,500",
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: OurMenu(
                        image: AssetImage("images/currry.jpeg"),
                        title: "Vegetable Curry",
                        text: "N1,200"),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: OurMenu(
                        image: AssetImage("images/pastasalad.jpeg"),
                        title: "Chicken Pasta Salad",
                        text: "N1,500"),
                  )
                ],
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: OurMenu(
                        image: AssetImage("images/pasta.jpeg"),
                        title: "Shrimp Pasta Salad",
                        text: "N1,800"),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: OurMenu(
                        image: AssetImage("images/salad.jpeg"),
                        title: "Mixed Salad",
                        text: "N1,500"),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: OurMenu(
                        image: AssetImage("images/beefsaladd.jpeg"),
                        title: "Beef Salad",
                        text: "N1,200"),
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: const BotNav(),
      ),
    );
  }
}
