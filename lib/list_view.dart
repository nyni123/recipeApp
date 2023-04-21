import 'package:flutter/material.dart';

class ListViewContanier extends StatelessWidget {
  const ListViewContanier(this.text1, this.text2, this.text3, {super.key});

  final String text1;
  final String text2;
  final String text3;
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
                'assets/images/coffee.jpg',
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
                'assets/images/image.png',
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
        const SizedBox(height: 525),
        Text(text3,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 23,
              color: Colors.black,
            )),
        Image.asset(
          'assets/images/images2.png',
          width: 40,
          height: 40,
        ),
      ],
    );
  }
}
