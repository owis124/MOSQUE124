import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karem2/screens/new_password.dart';
import 'package:karem2/screens/register_page.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => RegisterPage()),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Stack(
        children: [
          // الصورة الخلفية
          Image.asset(
            'assets/mask group.png', // المسار إلى الصورة الخلفية
            fit: BoxFit.cover, // تغطية الشاشة بالكامل
            width: double.infinity,
            height: double.infinity,
          ),
          // اللوغو في المنتصف
          Center(
            child: Image.asset(
              'assets/logo.png', // المسار إلى اللوغو
              width: 150, // اضبط حجم اللوغو حسب الحاجة
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}