import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_calculator/Flutter/Review.dart';

class OurMenu extends StatelessWidget {
  final AssetImage image;
  final String title;
  final String text;
  const OurMenu(
      {super.key,
      required this.image,
      required this.title,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 7),
        child: Container(
          height: 210,
          width: 160,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                const BoxShadow(
                    color: Color.fromARGB(255, 193, 190, 190),
                    spreadRadius: 1,
                    offset: Offset(0, 2))
              ]),
          child: Column(
            children: [
              const Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.deepOrange,
                    ),
                  )),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Review(),
                        ));
                  },
                  child: CircleAvatar(radius: 60, backgroundImage: image)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(title,
                        style: GoogleFonts.varelaRound(
                          textStyle: const TextStyle(
                              fontSize: 11,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        )),
                    Text(text,
                        style: GoogleFonts.varelaRound(
                          textStyle: const TextStyle(
                              fontSize: 11,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
