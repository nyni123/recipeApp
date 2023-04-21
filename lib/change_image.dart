import 'dart:math';

import 'package:flutter/material.dart';

class ChangeImage extends StatefulWidget {
  const ChangeImage({super.key});

  @override
  State<ChangeImage> createState() {
    return _ChangeImageState();
  }
}

class _ChangeImageState extends State<ChangeImage> {
  final List<String> image = [
    'assets/images/coffee.jpg',
    'assets/images/image.png',
    'assets/images/images1.png',
    'assets/images/images2.png'
  ];

  int currentindex = 0;

  void changeImages() {
    setState(() {
      currentindex = Random().nextInt(image.length);
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        image[currentindex],
        width: 200,
        alignment: Alignment.center,
      ),
      TextButton(onPressed: changeImages, child: const Text('Change Image')),
    ]);
  }
}
