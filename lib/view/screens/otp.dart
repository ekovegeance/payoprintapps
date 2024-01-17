import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/color_schemes.dart';
import 'package:flutter_application_1/view/screens/confirm-password.dart';
import 'package:flutter_application_1/view/screens/login.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          leading: IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Login()),
            ),
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20),
                const Text('Masukan kode OTP',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: primary)),
                const SizedBox(height: 20),
                const SizedBox(height: 60),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'kode OTP',
                  ),
                ),
                const SizedBox(height: 20),
                FilledButton(
                    onPressed: ()  => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfirmPassword()),
                        ),
                    child: const Text(
                      'Kirim', style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ));
  }
}
