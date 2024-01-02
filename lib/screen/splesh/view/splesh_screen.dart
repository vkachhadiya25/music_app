import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, 'home');
    });
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage("assets/image/spotify.jpeg"),
          ),
        ),
      ),
    );
  }
}
