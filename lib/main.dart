import 'package:RecipeApp/display.dart';
import 'package:flutter/material.dart';
import 'package:RecipeApp/gradient_container.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp((const MainView()));
}

class MainView extends StatelessWidget {
  const MainView({super.key});
  @override
  Widget build(context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text(
              'Kitchen Mates',
            ),
            centerTitle: true,
            backgroundColor: Colors.green,
          ),
          backgroundColor: Colors.deepPurple[100],
          body: const Display(),
          drawer: const Drawer(
            width: 280,
            child: GradientContainer(Color.fromARGB(255, 237, 240, 241),
                Color.fromARGB(255, 237, 242, 243)),
          ),
        ),
      ),
    );
  }
}
