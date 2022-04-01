import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project1/gridview.dart';
import 'package:project1/list.dart';
import 'package:project1/list_latihan.dart';
import 'package:project1/model/menuUtama.dart';
import 'package:project1/registerScreen.dart';
import 'package:project1/shop.dart';
import 'package:project1/stack.dart';
import 'package:project1/view/home.dart';
import 'package:project1/view/menuShop.dart';
import 'package:project1/view/navDraw_main.dart';

import 'ListScreen.dart';

class bottom extends StatefulWidget {
  const bottom({Key? key}) : super(key: key);

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {

  int currentIndex = 0;
  final List<Widget> body = [
    navDraw_main(),
    ListScreen(),
    stack(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: ConvexAppBar(
        onTap: ontap,
        items: [
          TabItem(
              icon: Icon(Icons.home, color: Colors.blue,),
              title: "Home",
          ),
          TabItem(
            icon: Icon(Icons.shopping_basket, color: Colors.blue,),
            title: "Shop",
          ),
          TabItem(
            icon: Icon(Icons.person_outline_rounded, color: Colors.blue,),
            title: "Account",
          ),
        ],
      ),
    );
  }

  void ontap(int index){
    setState(() {
      currentIndex = index;
    });
  }
}
