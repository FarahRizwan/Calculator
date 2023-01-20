import 'package:flutter/material.dart';

// ignore: camel_case_types
class myButtons extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onpress;
  const myButtons(
      {super.key,
      required this.title,
      this.color = const Color(0xffa5a5a5),
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 60,
            // ignore: sort_child_properties_last
            child: Center(
              child: Text(
                title,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          ),
        ),
      ),
    );
  }
}
