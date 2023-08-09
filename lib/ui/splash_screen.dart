import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/29447-global-mobile-news-network.json',
                height: 250),
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('Dịch',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 29,
                      fontWeight: FontWeight.bold)),
              Text(
                'Ngôn Ngữ',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 29,
                    fontWeight: FontWeight.bold),
              )
            ])
          ],
        ),
      ),
    );
  }
}
