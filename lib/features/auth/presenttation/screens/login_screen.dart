import 'package:flutter/material.dart';
import 'splash_screen.dart'; 

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _HomeState();
}

class _HomeState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Center(child: Text('Login Screen')),
        actions: [
          // Icon button to go back to the SplashScreen
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Navigate back to the SplashScreen
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SplashScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Welcome to the Login Screen',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
