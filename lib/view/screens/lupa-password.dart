import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/color_schemes.dart';
import 'package:flutter_application_1/view/screens/login.dart';
import 'package:flutter_application_1/view/screens/otp.dart';

class LupaPassword extends StatefulWidget {
  const LupaPassword({super.key});

  @override
  State<LupaPassword> createState() => _LupaPasswordState();
}

class _LupaPasswordState extends State<LupaPassword> {
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
                const Text('Lupa Password?',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: primary)),
                const SizedBox(height: 20),
                const Text('Masukan email anda untuk mendapatkan kode OTP.',
                    style: TextStyle(fontSize: 18, color: secondary)),
                const SizedBox(height: 60),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(height: 20),
                FilledButton(
                    onPressed: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            icon: const Icon(
                              Icons.email_rounded,
                              fill: 1.0,
                            ),
                            title: const Text('Periksa Email Anda'),
                            content: const Text('Kode OTP telah dikirimkan.'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Otp()),
                                ),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
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
