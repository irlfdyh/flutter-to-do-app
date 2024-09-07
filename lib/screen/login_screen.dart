import 'package:app/screen/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("asset/flutter_logo.png"),
              width: 80,
              height: 100,
            ),
            const SizedBox(
              height: 120,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Username",
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
              ),
            ),
            const SizedBox(
              height: 56,
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () => {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  )
                },
                child: const Text("Login"),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextButton(
              onPressed: () => {},
              child: const Text("Forgot Password"),
            )
          ],
        ),
      ),
    );
  }
}
