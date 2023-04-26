import 'package:flutter/material.dart';
import 'package:RecipeApp/search_bar.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/back_img.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const Padding(
              padding: EdgeInsets.symmetric(
            horizontal: 40.0,
          )),
          // Text(
          //   'Get the Recipe',
          //   style: TextStyle(
          //       fontFamily: '',
          //       fontSize: 30,
          //       color: Color.fromARGB(255, 13, 13, 13),
          //       fontWeight: FontWeight.bold),
          // ),

          //text image

          Image.asset('assets/images/recipe.png'),
          const SizedBox(
            height: 190,
          ),
          const SearchBar(),
        ],
      ),
    );
  }
}
