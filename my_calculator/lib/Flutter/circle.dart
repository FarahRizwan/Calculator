import 'package:flutter/material.dart';


class circle extends StatelessWidget {
  const circle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(bottom: 200, right: 200),
                child: SafeArea(
                  child: Container(
                    height: 190,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("images/rice.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(200),
                            bottomLeft: Radius.circular(20))),
                  ),
                )),
            
          ],
        ),
      ),
    );
  }
}
