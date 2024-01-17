import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widgets/navbar.dart';

class Transaksi extends StatelessWidget {
  const Transaksi({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Transaksi'),leading: IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Navbar()),
            ),
            icon: const Icon(Icons.arrow_back),
          ),
          bottom: const TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: <Widget>[
              Tab(
                text: 'Selesai',
              ),
              Tab(
                text: 'Proses',
              ),
              
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(image: AssetImage('assets/images/transaksi.png'), height: 150,),
                  Text("Belum ada transaksi", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text("Transaksi yang sudah selesai akan muncul disini", style: TextStyle(fontSize: 15, color: Colors.grey),),
                ],),
            ),
            Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  Image(image: AssetImage('assets/images/print.png'), height: 150,),
                  Text("Hmm, Anda belum ngeprint hari ini", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text("Kami aktif 24 jam untuk melayani Anda", style: TextStyle(fontSize: 15, color: Colors.grey),),
                ],)
            ),
          ],
        ),
      ),
    );
  }
}