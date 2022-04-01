import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            children: [
              ClipOval(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey[200],
                  child: Image.network("https://th.bing.com/th/id/R.271e13beeb1c1c15b831de9c04a9867b?rik=bX%2bCFb2aiDiZow&riu=http%3a%2f%2ftonihandoko.files.wordpress.com%2f2011%2f04%2fprofile-pics-polos.jpg%3fw%3d590&ehk=NZqti8hzppaS6CyCh3dNaQnDbeUBznU%2bOFE9kT0t%2f64%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1"),
                  //child: Center(child: Text("x")),
                ),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/loginicon.png", width: 16, height: 16,),
                      const SizedBox(width: 16,),
                      Text(
                        "Agung Eka Saputra",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.account_balance_wallet, size: 16,),
                      //Image.asset("assets/loginicon.png", width: 20, height: 20,),
                      const SizedBox(width: 16,),
                      Text(
                        "Rp. 23.456",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.monetization_on_rounded, size: 16,),
                      //Image.asset("assets/loginicon.png", width: 20, height: 20,),
                      const SizedBox(width: 16,),
                      Text(
                        "9.876 Koin",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PREMIUM",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20), //Jarak
                Text(
                  "201743501989",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Agung Eka Saputra",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Mau mulai berbisnis ?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    TextButton(onPressed: () {},
                      child: Text("BUka toko gratis"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Divider( //garis
            color: Colors.grey[300],
            thickness: 2,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Last 5 Days",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              TextButton(onPressed: () {},
                child: Text("See more"),
              ),
            ],
          ),
          SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true, //kita gabung listview parent
            physics: NeverScrollableScrollPhysics(), //agar tidak bisa di scroll
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Barang Dikirim",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Success",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text("${DateTime.now()}"),
                    SizedBox(height: 10),
                    Text(
                      "Barang Diterima",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("${DateTime.now()}"),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
