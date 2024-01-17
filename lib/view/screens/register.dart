import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/color_schemes.dart';
import 'package:flutter_application_1/view/screens/login.dart';
import 'package:flutter_application_1/view/screens/onboarding.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
          title: const Text('Register'),
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
                const Text('Daftar hanya dalam beberapa langkah mudah.',
                    style: TextStyle(fontSize: 18, color: secondary,)),
                const SizedBox(height: 60),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nama Lengkap',
                  ),
                ),
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'No HP/ Whatsapps',
                  ),
                ),
                const SizedBox(height: 20),
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
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Konfirmasi Password',
                  ),
                ),
                const SizedBox(height: 40),
                FilledButton(
                    onPressed: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            icon: const Icon(
                              Icons.check,
                              fill: 1.0,
                            ),
                            title: const Text('Selamat Datang di Payoprint!'),
                            content: const Text(
                                'Akun anda berhasil dibuat. Silahkan login kembali.'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()),
                                ),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        ),
                    child: const Text(
                      'Buat akun',style: TextStyle(fontWeight: FontWeight.w600),
                    ))
              ],
            ),
          ),
        ));
  }
}
