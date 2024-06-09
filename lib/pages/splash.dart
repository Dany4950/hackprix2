import 'package:flutter/material.dart';
import 'package:hackathon2/admin/homepage_admin.dart';
import 'package:hackathon2/main.dart';
import 'package:hackathon2/pages/homepage.dart';
import 'package:hackathon2/pages/next_splash.dart';
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
      // MaterialPageRoute(builder: (context) => Home()),
      MaterialPageRoute(builder: (context) => LayeredGridPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.construction,
                size: 40,
              ),
              SizedBox(height: 20),
              Text(
                'Welcome to Our App',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
