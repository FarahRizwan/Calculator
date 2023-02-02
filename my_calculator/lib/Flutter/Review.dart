import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Badge(
                showBadge: true,
                badgeColor: Colors.deepOrange,
                toAnimate: true,
                badgeContent: const Text("1"),
                animationType: BadgeAnimationType.scale,
                shape: BadgeShape.circle,
                child: Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 220,
              width: 400,
              color: Color.fromARGB(255, 244, 236, 236),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40, bottom: 30),
                    child: CircleAvatar(
                      radius: 140,
                      backgroundColor: Colors.deepOrange,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("images/rice4.jpeg"),
                        radius: 120,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 170, right: 20),
                    child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite,
                          size: 40,
                          color: Colors.deepOrange,
                        )),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 210,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 143, 139, 139).withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Jollof Rice",
                                style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(
                                "(59 rating)",
                                style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromARGB(
                                            255, 175, 172, 172))),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "N1,200",
                                  style: GoogleFonts.ubuntu(
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ),
                              ),
                              SizedBox(
                                width: 160,
                              ),
                              Container(
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.deepOrange,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "-",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "1",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "+",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Description",
                                    style: GoogleFonts.ubuntu(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  )),
                              Text(
                                "Rich and incredibly tasty rice dish, made with reduced tomatoes, bell peppers, chilli peppers, onions, herbs and seasoning.",
                                style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 111, 110, 110),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "(Each serving contains 248 calories)",
                                  style: GoogleFonts.ubuntu(
                                      textStyle: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold)),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                    height: 200,
                    width: 400,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Recommended Sides",
                            style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(children: [
                                Stack(children: [
                                  Container(
                                    height: 150,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        image: DecorationImage(
                                            image:
                                                AssetImage("images/fries.jpeg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 100),
                                    child: Container(
                                      height: 50,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Fried Plantain",
                                              style: GoogleFonts.ubuntu(
                                                  textStyle: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 152, 149, 149))),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "N300",
                                                style: GoogleFonts.ubuntu(
                                                    textStyle: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black)),
                                              ),
                                              Icon(
                                                Icons.add_circle,
                                                color: Colors.deepOrange,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                                SizedBox(
                                  width: 4,
                                ),
                                Stack(children: [
                                  Container(
                                    height: 150,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "images/coleslaw.jpeg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 100),
                                    child: Container(
                                      height: 50,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "ColeSlaw",
                                              style: GoogleFonts.ubuntu(
                                                  textStyle: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 152, 149, 149))),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "N800",
                                                style: GoogleFonts.ubuntu(
                                                    textStyle: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black)),
                                              ),
                                              Icon(
                                                Icons.remove_circle,
                                                color: Colors.deepOrange,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                                SizedBox(
                                  width: 4,
                                ),
                                Stack(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 150,
                                          width: 130,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(20),
                                              ),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/friedchicken.jpeg"),
                                                  fit: BoxFit.cover)),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 100),
                                      child: Container(
                                        height: 50,
                                        width: 130,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.grey)),
                                        child: Column(
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "Fried Chicken",
                                                  style: GoogleFonts.ubuntu(
                                                      textStyle: TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              152,
                                                              149,
                                                              149))),
                                                )),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "N900",
                                                style: GoogleFonts.ubuntu(
                                                    textStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ])),
                        ),
                      ]),
                    ))
              ],
            ),
            Stack(children: [
              Container(
                height: 100,
                width: 420,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Ratings and Reviews",
                        style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "SEE ALL",
                        style: GoogleFonts.ubuntu(
                            textStyle:
                                TextStyle(color: Colors.red, fontSize: 15)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 100,
                  width: 450,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total N20,000",
                        style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Row(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                size: 30,
                                color: Colors.white,
                              ),
                              Text(
                                "Add to Cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ])
          ]),
        ));
  }
}
