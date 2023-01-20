import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_calculator/Components/container.dart';
import 'package:badges/badges.dart';

class Flyer extends StatefulWidget {
  const Flyer({super.key});

  @override
  State<Flyer> createState() => _FlyerState();
}

class _FlyerState extends State<Flyer> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text("Hello Sofia",
            style: GoogleFonts.balsamiqSans(
                textStyle: TextStyle(fontSize: 30, color: Colors.black))),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.notifications,
                  size: 30,
                  color: Colors.black,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Badge(
                    badgeColor: Colors.green,
                    shape: BadgeShape.circle,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            cont2(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  contWgt(
                      icon: Icon(
                        Icons.dinner_dining,
                        color: Colors.red,
                        size: 50,
                      ),
                      title: "Dinner"),
                  contWgt(
                    icon: Icon(
                      Icons.lunch_dining,
                      color: Colors.green,
                      size: 50,
                    ),
                    title: "Lunch",
                  ),
                  contWgt(
                      icon: Icon(
                        Icons.breakfast_dining,
                        color: Colors.pink,
                        size: 50,
                      ),
                      title: "Breakfast"),
                  contWgt(
                      icon: Icon(
                        Icons.cake,
                        color: Colors.brown,
                        size: 50,
                      ),
                      title: "Dessert"),
                  contWgt(
                      icon: Icon(
                        Icons.cookie,
                        color: Colors.pink,
                        size: 50,
                      ),
                      title: "Hi-Tea"),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "Popular Food",
                  style: GoogleFonts.balsamiqSans(
                      textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  cont3(),
                  SizedBox(
                    width: 10,
                  ),
                  cont3(),
                ],
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    "Order Again",
                    style: GoogleFonts.balsamiqSans(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                )),
            cont4(),
          ],
        ),
      ),
      bottomNavigationBar: Bottom(),
    );
  }
}
