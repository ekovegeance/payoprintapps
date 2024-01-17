import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/color_schemes.dart';
import 'package:material_symbols_icons/symbols.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20),
                      Text('Hai, Zakaria',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      Text('Selamat Datang di Payoprint!',
                          style: TextStyle(fontSize: 15, color: Colors.grey)),
                    ]),
                IconButton.outlined(
                    onPressed: () {},
                    icon: const Icon(
                      Symbols.shopping_cart_rounded,
                      fill: 1.0,
                      color: neutral,
                    )),
              ],
            ),
            SizedBox(height: 20),
            SearchBar(
              elevation: MaterialStatePropertyAll(0.5),
              hintText: 'Cari',
              leading: Icon(
                Symbols.search,
                color: neutral,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Image(image: AssetImage('assets/images/banner.png')),
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            )),
                    SizedBox(height: 50),
                    Text('Mau cetak apa hari ini?',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: primary)),
                    Text('Tersedia layanan print cetak dokumen'),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          debugPrint('Card tapped.');
                        },
                          child: Container(height: 100, width: 110,  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: secondary)), child: Column( children: [
                            SizedBox(height: 10),
                            Image(image: AssetImage('assets/images/logo.png'), height: 50,),
                            Text('Station Box', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                          ],),),
                        ),
                        InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          debugPrint('Card tapped.');
                        },
                          child: Container(height: 100, width: 110,  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: secondary)), child: Column( children: [
                            SizedBox(height: 10),
                            Image(image: AssetImage('assets/images/logo.png'), height: 50,),
                            Text('Makalah', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                          ],),),
                        ),
                        InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          debugPrint('Card tapped.');
                        },
                          child: Container(height: 100, width: 110,  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: secondary)), child: Column( children: [
                            SizedBox(height: 10),
                            Image(image: AssetImage('assets/images/logo.png'), height: 50,),
                            Text('Dokumen', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                          ],),),
                        ),
                      ],
                    ),
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Print Dokumen',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: primary)),
                            Text(
                              'Print dokumen dengan harga murah',
                            ),
                          ],
                        ),
                        FilledButton.tonal(
                            onPressed: () {},
                            child: Text(
                              'Lainnya',
                              style: TextStyle(color: primary),
                            ))
                      ],
                    ),
                    SizedBox(height: 20),
                    Card(
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          debugPrint('Card tapped.');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Symbols.print),
                              title: Text('Test Print'),
                              subtitle: Text('Test Print'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Card(
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          debugPrint('Card tapped.');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Symbols.print),
                              title: Text('Test Print'),
                              subtitle: Text('Test Print'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          debugPrint('Card tapped.');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Symbols.print),
                              title: Text('Test Print'),
                              subtitle: Text('Test Print'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          debugPrint('Card tapped.');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Symbols.print),
                              title: Text('Test Print'),
                              subtitle: Text('Test Print'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
