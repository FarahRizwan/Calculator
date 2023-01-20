import 'package:flutter/material.dart';
import 'package:my_calculator/Flutter/Review.dart';

class BotNav extends StatefulWidget {
  const BotNav({super.key});

  @override
  State<BotNav> createState() => _BotNavState();
}

int _currentIndex = 0;

class _BotNavState extends State<BotNav> {
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
      unselectedFontSize: 15,
      backgroundColor: Colors.white,
      unselectedItemColor: Color.fromARGB(255, 82, 66, 66),
      selectedItemColor: Color.fromARGB(255, 82, 66, 66),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat_rounded,
            color: Colors.grey,
          ),
          activeIcon: Icon(Icons.chat_rounded),
          backgroundColor: Colors.white,
          label: "Live Chat",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 30,
          ),
          backgroundColor: Colors.white,
          label: "Profile",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
            size: 30,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.dining,
              color: Colors.deepOrange,
            ),
            label: "Menu"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favroite")
      ],
    );
  }
}
