import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/color_schemes.dart';
import 'package:flutter_application_1/view/screens/lupa-password.dart';
import 'package:flutter_application_1/view/screens/onboarding.dart';
import 'package:flutter_application_1/view/widgets/navbar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          leading: IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Onboarding()),
            ),
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('Masuk'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20),
                const Text('Selamat Datang di Payoprint!',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: primary)),
                const SizedBox(height: 20),
                const Text('Masuk untuk melanjutkan.',
                    style: TextStyle(fontSize: 18, color: secondary)),
                const SizedBox(height: 60),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LupaPassword()),
                      ),
                      child: const Text(
                        'Lupa Password?',
                        style: TextStyle(color: primary),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                FilledButton(
                    onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Navbar()),
                        ),
                    child: const Text(
                      'Masuk', style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ));
  }
}
