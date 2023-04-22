import 'package:flutter/material.dart';
import 'package:RecipeApp/search_bar.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg_img1.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: const [
          SearchBar(),
          // add more widgets here
        ],
      ),
    );
  }
}
