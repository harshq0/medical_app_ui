import 'package:flutter/material.dart';

class Categoreycard extends StatelessWidget {
  final String text;
  final String iconPath;
  const Categoreycard({super.key, required this.text, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue.shade400,
        ),
        child: Row(
          children: [
            Image.asset(
              iconPath,
              height: 50,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
