import 'package:flutter/material.dart';

import 'loginScreen.dart';

class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  final List bulan = [
    "Januari",
    "Fabruari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contoh List"),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(
              width: 160.0,
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/loginicon.png", width: 70, height: 70,),
                  const SizedBox(height: 16,),
                  Text("Agung", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                  ),
                ],
              ),
              //child: Image.asset("assets/loginicon.png", width: 70, height: 70,
              //),
            ),
            SizedBox(
              width: 160.0,
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/loginicon.png", width: 70, height: 70,),
                  const SizedBox(height: 16,),
                  Text("Agung", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                  ),
                ],
              ),
              //child: Image.asset("assets/loginicon.png", width: 70, height: 70,
              //),
            ),
            SizedBox(

              width: 160.0,
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/loginicon.png", width: 70, height: 70,),
                  const SizedBox(height: 16,),
                  Text("Agung", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                  ),
                ],
              ),
              //child: Image.asset("assets/loginicon.png", width: 70, height: 70,
              //),
            ),
            Container(
              width: 160.0,
              color: Colors.red,
            ),
            Container(
              width: 160.0,
              color: Colors.blue,
            ),
            Container(
              width: 160.0,
              color: Colors.green,
            ),
            Container(
              width: 160.0,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              color: Colors.orange,
            ),
          ],
        ),

      ),
      );
  }
}
