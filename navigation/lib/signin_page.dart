import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  Future<void> _signin() async {
    
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextField(
            decoration: InputDecoration(
              labelText: 'Username',
            ),
          ),
          const SizedBox(height: 16.0),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          const SizedBox(height: 50.0),
          ElevatedButton(
            onPressed: _signin,
            child: const Text('Sign In'),
          ),
        ],
      ),
    );
  }
}
