import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/screens/login.dart';
import 'package:flutter_application_1/view/screens/register.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class Onboarding extends StatelessWidget {
  final Color primary = const Color(0xFF1985A1);

  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnBoardingSlider(
        finishButtonText: 'Register',
        onFinish: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const Register(),
            ),
          );
        },
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: primary,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(100))),
        ),
        skipTextButton: Text(
          'Skip',
          style: TextStyle(
            fontSize: 16,
            color: primary,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: Text(
          'Login',
          style: TextStyle(
            fontSize: 16,
            color: primary,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailingFunction: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const Login(),
            ),
          );
        },
        controllerColor: primary,
        totalPage: 3,
        headerBackgroundColor: Colors.white,
        pageBackgroundColor: Colors.white,
        background: [
          Center(
              child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100, vertical: 100),
                  child: Image.asset('assets/images/onboard1.png', height: 200,))),
          Center(
              child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 80, vertical: 150),
                  child: Image.asset('assets/images/onboard2.png', height: 150,))),
          Center(
              child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100, vertical: 100),
                  child: Image.asset('assets/images/onboard3.png', height: 200,))),
        ],
        speed: 1.8,
        pageBodies: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 400,
                ),
                Text(
                  'Kenalin, payoprint.id',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: primary,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Payoprint Bertujuan Untuk Mewujudkan Impianmu Lebih Cepat! Mimpimu Tidak Hanya Bisa Dirasakan, Tapi Juga Dicetak.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 400,
                ),
                Text(
                  'Cetak Dari Rumah Dengan Harga Terjangkau?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: primary,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Tidak perlu repot, tidak perlu mahal Payoprint Solusinya. Layanan pesan, cetak 24 jam dimana saja dan kapan saja',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 400,
                ),
                Text(
                  'Bisa diantar kemana saja dan kapan saja',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: primary,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Layanan cetak beragam sesuai keinginan dan kebutuhan, Bisa diantar kemana saja dan kapan saja',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
