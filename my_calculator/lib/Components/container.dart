import 'package:flutter/material.dart';

class contWgt extends StatelessWidget {
  final Icon icon;
  final String title;
  const contWgt({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 30),
      child: Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            icon,
            Text(
              title,
              style: TextStyle(fontSize: 15, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}

class cont2 extends StatelessWidget {
  const cont2({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
          height: 45,
          width: 400,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(
                  Icons.show_chart,
                  color: Colors.green,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.green,
                ),
                fillColor: Color.fromARGB(255, 242, 220, 220),
                hintText: "Find a food or Restaurant",
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class cont3 extends StatelessWidget {
  const cont3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 20,
      ),
      child: Container(
        height: 260,
        width: 180,
        decoration: BoxDecoration(
            image: const DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage("images/avacadoo.jpeg"),
                fit: BoxFit.contain),
            color: Colors.white,
            border: Border.all(color: Color.fromARGB(255, 200, 199, 199)),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 150,
            left: 10,
          ),
          child: Column(
            children: [
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Avacado Grocery",
                    style: TextStyle(
                        color: Color.fromARGB(255, 78, 75, 75),
                        fontWeight: FontWeight.bold),
                  )),
              Row(
                children: [
                  Text("4.2"),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 10,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 10,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 10,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 10,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey,
                    size: 10,
                  ),
                  Text("(200)")
                ],
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Rs. 34",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class cont4 extends StatelessWidget {
  const cont4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
            height: 100,
            width: 400,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage("images/avacadoo.jpeg"),
                ),
                border: Border.all(color: Color.fromARGB(255, 200, 199, 199)),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 10),
                  child: Text(
                    "Avacado Grocery",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Rs 34",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    )),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 110),
                      child: Row(
                        children: [
                          Text("4.2"),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 15,
                          ),
                          Text("(200)")
                        ],
                      ),
                    ))
              ],
            )),
      ),
    );
  }
}

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        iconSize: 30,
        selectedFontSize: 15,
        unselectedFontSize: 12,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home_filled),
              backgroundColor: Colors.green,
              label: "Home",
              tooltip: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              activeIcon: Icon(Icons.shopping_bag),
              backgroundColor: Colors.green,
              label: "Carts",
              tooltip: "Carts"),
          BottomNavigationBarItem(
              icon: Icon(Icons.email),
              backgroundColor: Colors.green,
              label: "Message",
              tooltip: "Message"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Colors.green,
              label: "Users",
              tooltip: "Users"),
        ]);
  }
}
