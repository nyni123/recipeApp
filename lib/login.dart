import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  void value() {}

  @override
  Widget build(context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // set this property to true
      body: Column(
        children: [
          Expanded(
            flex: 0,
            child: Container(
              color: Colors.green,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/text1.png',
                    color: Colors.black.withOpacity(0.9),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/image11.png",
                      width: 200,
                      height: 180,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Email',
                        hintText: 'Enter Your Email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Password',
                        hintText: 'Enter Your Password',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: value,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.redAccent),
                      ),
                      child: const Text(
                        'Log In',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextButton(
                      onPressed: value,
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    const Text(
                      "Don't have an account yet ?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(onPressed: value, child: const Text('Sign Up'))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
