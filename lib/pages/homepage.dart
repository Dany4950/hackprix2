import 'package:flutter/material.dart';
import 'package:hackathon2/pages/signup.dart';
import 'package:hackathon2/pages/splash.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyAppState();
}

class _MyAppState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Signup(),
      ),
    );
  }
}
