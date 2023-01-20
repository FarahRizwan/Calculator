import 'package:flutter/material.dart';

class container3 extends StatelessWidget {
  const container3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 130,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          image: DecorationImage(
              image: AssetImage("images/friedchicken.jpeg"),
              fit: BoxFit.cover)),
    );
  }
}
