import 'package:RecipeApp/food_items.dart';
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
              leading: const Icon(
                Icons.home,
                color: Colors.black,
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
              leading: const Icon(Icons.food_bank),
              iconColor: Colors.black,
              title: Text(
                text2,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FoodItems()));
              },
            ),
          ],
        ),
      ],
    );
  }
}
