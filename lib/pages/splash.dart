import 'package:flutter/material.dart';
import 'package:hackathon2/admin/homepage_admin.dart';
import 'package:hackathon2/main.dart';
import 'package:hackathon2/pages/homepage.dart';
import 'package:hackathon2/worker/home_worker.dart'; // Adjust the import path if needed

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatehome();
  }

  _navigatehome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.deepPurpleAccent,
          child: Center(
            // Center the text within the container
            child: Text(
              "Splash Screen Loading",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
