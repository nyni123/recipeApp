import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  void value() {}

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter Your Email',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'password',
                          hintText: 'Enter Your password',
                          border: OutlineInputBorder()),
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    ElevatedButton(
                        onPressed: value, child: const Text('Login')),
                    const SizedBox(height: 16),
                    const Text("Don't have an account yet ?"),
                    TextButton(onPressed: value, child: const Text('Sign Up')),
                  ],
                )),
              )),
        ],
      ),
    );
  }
}
