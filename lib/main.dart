import 'package:flutter/material.dart';
import 'package:karem2/screens/HomeScreen.dart';
import 'package:karem2/screens/end_screen.dart';
import 'package:karem2/screens/new_password.dart';
import 'package:karem2/screens/register_page.dart';
import 'package:karem2/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    showSemanticsDebugger: false,
   
      home: RegisterPage(), 
   );
  }
}
