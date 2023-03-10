import 'package:flutter/material.dart';
import 'package:my_calculator/Flutter/OurMenu.dart';

import 'Review.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool fsd = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text("Email Address"),
                  )),
              Center(
                child: Container(
                  height: 40,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 247, 239, 239)
                              .withOpacity(0.5),

                          blurRadius: 2,
                          offset: const Offset(2, 2), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25, top: 10),
                    child: Text("Enter Password"),
                  )),
              Container(
                height: 40,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    boxShadow: [
                      BoxShadow(
                        color:
                            const Color.fromARGB(255, 247, 239, 239).withOpacity(0.5),

                        blurRadius: 2,
                        offset: const Offset(2, 2), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      suffixIcon: Icon(Icons.remove_red_eye)),
                ),
              ),
              const Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.black,
                        value: fsd,
                        onChanged: ((value) {
                          setState(() {
                            fsd = value!;
                          });
                        })),
                    const Text(
                      "Remember me",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 260,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                    child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 3,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "OR",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Sign in using:"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/G.png"),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/f.png"),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Menu()));
                      },
                      child: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("images/t.png"),
                      ),
                    ),
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
