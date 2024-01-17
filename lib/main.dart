import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/color_schemes.dart';
import 'package:flutter_application_1/view/screens/splash.dart';



void main() {
  runApp(const Flutter());
}

class Flutter extends StatelessWidget {
  const Flutter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payoprint',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary, background: Colors.white),
        iconTheme: const IconThemeData(color: primary),
        useMaterial3: true,
      ),
      home: const Splash(),
    );
  }
}

