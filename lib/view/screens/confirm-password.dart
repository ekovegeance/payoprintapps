import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/color_schemes.dart';
import 'package:flutter_application_1/view/screens/login.dart';
import 'package:material_symbols_icons/symbols.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({super.key});

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
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
                const Text('Reset Password',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: primary)),
                const SizedBox(height: 60),
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
                    labelText: 'confirm password',
                  ),
                ),
                const SizedBox(height: 20),
                FilledButton(
                    onPressed: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            icon: const Icon(Symbols.check, fill: 1.0,),
                            title: const Text('Password Berhasil Diubah'),
                            content: const Text('Silahkan login kembali.'),
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
                      'Kirim', style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ));
  }
}
