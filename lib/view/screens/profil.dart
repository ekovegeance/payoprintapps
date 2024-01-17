import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/color_schemes.dart';
import 'package:flutter_application_1/view/screens/login.dart';
import 'package:material_symbols_icons/symbols.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil')),
      body: Container(
        padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage('assets/images/profil.png'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 10),
                      Text('Zakaria Sutomo', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('print@payoprint', style: TextStyle(fontSize: 16, color: secondary)),
                      Text('+628888888', style: TextStyle(fontSize: 16, color: secondary)),
                    ],
                  ),
                ],
              ),
              ),
          Container(
            padding: const EdgeInsets.only(top: 100),
            child: ListTile(
              leading: Icon(Symbols.list_alt_rounded, color: neutral[300], fill: 1.0),
              title: Text('Transaksi', selectionColor: neutral, style: TextStyle(fontWeight: FontWeight.bold),),  
              onTap: () {},
            ),
          ),
          Divider(indent: 70, color: secondary[300],),
          Container(
            child: ListTile(
              leading: Icon(Symbols.list_alt_rounded, color: neutral[300], fill: 1.0),
              title: Text('Metode Pembayaran', selectionColor: neutral, style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {},
            ),
          ), Divider(indent: 70, color: secondary[300],),
          const SizedBox(height: 50),
                FilledButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red.shade100)),
                    onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()),
                        ),
                    child: const Text(
                      'Keluar', style: TextStyle(fontWeight: FontWeight.bold, color: error),
                    ))
        ]),
      ),
    );
  }
}
