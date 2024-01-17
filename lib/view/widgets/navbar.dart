import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/color_schemes.dart';
import 'package:flutter_application_1/view/screens/beranda.dart';
import 'package:flutter_application_1/view/screens/chat.dart';
import 'package:flutter_application_1/view/screens/profil.dart';
import 'package:flutter_application_1/view/screens/transaksi.dart';
import 'package:material_symbols_icons/symbols.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbareState();
}

class _NavbareState extends State<Navbar> {
  int currentPageIndex = 0;

  final List<Widget> _screen = [
    const Beranda(),
    const Chat(),
    const Transaksi(),
    const Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: primary),
          iconTheme:
              const IconThemeData(color: neutral, opacity: 1.0, grade: 200, weight: 700),
          useMaterial3: true,
          navigationBarTheme: const NavigationBarThemeData(
            iconTheme: MaterialStatePropertyAll(IconThemeData()),
          )),
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: primary[50],
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(
                Symbols.home_rounded, fill: 1.0,
                color: primary,
              ),
              icon: Icon(
                Symbols.home_rounded,
                
              ),
              label: 'Beranda',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Symbols.chat_bubble_rounded, fill: 1.0,
                color: primary,
              ),
              icon: Icon(
                Symbols.chat_bubble_rounded,
                
              ),
              label: 'Chat',
            ),
            NavigationDestination(
              icon: Badge(
                label: Text('2'),
                child: Icon(Symbols.list_alt_rounded),
              ),
              label: 'Transaksi',
              selectedIcon: Badge(
                label: Text('2'),
                child: Icon(Symbols.list_alt_rounded, color: primary, fill: 1.0),
              ),
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Symbols.person_rounded, fill: 1.0,
                color: primary,
              ),
              icon: Icon(
                Symbols.person_rounded,
                
              ),
              label: 'Profil',
            ),
          ],
        ),
        body: _screen[currentPageIndex],
      ),
    );
  }
}
