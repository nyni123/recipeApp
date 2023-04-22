import 'package:RecipeApp/main.dart';
import 'package:flutter/material.dart';

class FoodItems extends StatelessWidget {
  const FoodItems({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Food Items'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MainView()));
            },
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/home.png',
            width: 90,
            height: 90,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
