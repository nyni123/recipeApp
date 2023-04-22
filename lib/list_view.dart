import 'package:flutter/material.dart';

class ListViewContanier extends StatelessWidget {
  const ListViewContanier(this.text1, this.text2, {super.key});

  final String text1;
  final String text2;
  @override
  Widget build(context) {
    return Column(
      children: [
        ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                'assets/images/home.png',
                fit: BoxFit.contain,
                width: 20,
                height: 20,
              ),
              title: Text(
                text1,
                textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 23, color: Colors.black),
              ),
            ),
            // const SizedBox(height: 5),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                'assets/images/image1.png',
                fit: BoxFit.contain,
                width: 20,
                height: 20,
              ),
              title: Text(
                text2,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
