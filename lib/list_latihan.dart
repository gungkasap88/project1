import 'package:flutter/material.dart';

class list_latihan extends StatefulWidget {
  const list_latihan({Key? key}) : super(key: key);

  @override
  State<list_latihan> createState() => _list_latihanState();
}

class _list_latihanState extends State<list_latihan> {
  final List Bulan =[
    "Agung",
    "Azwar",
    "Dwiki",
    "Kukuh",
    "Lasmana",
    "Syelli",
    "Zunessa",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact",
            style: TextStyle(fontSize: 30)),
        leading: Icon(Icons.water_damage_rounded,
          size: 30,),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(Bulan[index],
                  style: TextStyle(fontSize: 30)),
              subtitle: Text('Klik untuk melihat informasi kontak ' + Bulan[index]),
              leading: CircleAvatar(
                child: Text(
                  Bulan[index][0],
                  style: TextStyle(fontSize: 16),
                ),
              ),

            ),
          );
        },
        itemCount: Bulan.length,
      ),
    );
  }
}
