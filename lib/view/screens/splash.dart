import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter_application_1/component/color_schemes.dart';
import 'package:flutter_application_1/view/screens/onboarding.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary, background: Colors.white),),
        home: FlutterSplashScreen.fadeIn(
      backgroundColor: Colors.white,
      onInit: () {
        debugPrint("On Init");
      },
      onEnd: () {
        debugPrint("On End");
      },
      childWidget: SizedBox(
        height: 150,
        width: 150,
        child: Image.asset(
          "assets/images/logo.png",
          height: 150,
          width: 150,
        ),
      ),
      onAnimationEnd: () => debugPrint("On Fade In End"),
      nextScreen: const Onboarding(),
    ));
  }
}
