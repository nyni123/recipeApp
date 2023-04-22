import 'package:RecipeApp/display.dart';
import 'package:flutter/material.dart';
import 'package:RecipeApp/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Recepie app'),
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.deepPurple[100],
          body: const Display(),
          drawer: const Drawer(
            width: 280,
            child: GradientContainer(
              Colors.greenAccent,
              Colors.blueGrey,
            ),
          ),
        ),
      ),
    ),
  );
}
