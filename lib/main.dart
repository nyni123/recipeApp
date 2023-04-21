import 'package:RecipeApp/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:RecipeApp/gradient_container.dart';
// import 'package:RecipeApp/change_image.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Recepie app'),
          backgroundColor: Colors.transparent,
        ),
        body: const SearchBar(),
        drawer: const Drawer(
          width: 280,
          child: GradientContainer(
            Colors.cyanAccent,
            Colors.transparent,
          ),
        ),
      ),
    ),
  );
}
