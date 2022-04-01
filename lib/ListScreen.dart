import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project1/model/listModel.dart';
import 'package:project1/model/listModelGenerate.dart';

import 'loginScreen.dart';
import 'model/DataBulan.dart';

import 'package:http/http.dart' as http;

import 'model/listModel.dart';
import 'model/listModel.dart';
import 'model/listModel.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
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

  List<DataBulan> dataBulan = [];

  void setData() {
    dataBulan.add(DataBulan(namaBulan: "Caliburn G", descriptonBulan: "Rp. 300.000,-", image: "https://s3.bukalapak.com/bukalapak-kontenz-production/content_attachments/72263/w-740/uwell_caliburn_g.jpg.webp"));
    dataBulan.add(DataBulan(namaBulan: "Voopoo Drag S", descriptonBulan: "Rp. xxx.xxx,-", image: "https://s4.bukalapak.com/bukalapak-kontenz-production/content_attachments/72264/w-740/voopoo_drag_s.jpg.webp"));
    dataBulan.add(DataBulan(namaBulan: "Smok Novo X", descriptonBulan: "Rp. xxx.xxx,-", image: "https://s0.bukalapak.com/bukalapak-kontenz-production/content_attachments/72265/w-740/smok_novo_x.jpg.webp"));
    dataBulan.add(DataBulan(namaBulan: "Vaporesso Luxe X", descriptonBulan: "Rp. xxx.xxx,-", image: "https://s1.bukalapak.com/bukalapak-kontenz-production/content_attachments/72266/w-740/luxe_q.jpg.webp"));
    dataBulan.add(DataBulan(namaBulan: "SMOK Nord 4", descriptonBulan: "Rp. xxx.xxx,-", image: "https://s2.bukalapak.com/bukalapak-kontenz-production/content_attachments/72267/w-740/smok_nord_4.jpg.webp"));
    dataBulan.add(DataBulan(namaBulan: "Juul", descriptonBulan: "Rp. xxx.xxx,-", image: "https://s2.bukalapak.com/bukalapak-kontenz-production/content_attachments/35172/original/JUUL_edt.jpg"));
    dataBulan.add(DataBulan(namaBulan: "Lost Vape Orion", descriptonBulan: "Rp. xxx.xxx,-", image: "https://s3.bukalapak.com/bukalapak-kontenz-production/content_attachments/35173/original/DNA_GO_edt.jpg"));
    dataBulan.add(DataBulan(namaBulan: "SMOK Nord", descriptonBulan: "Rp. xxx.xxx,-", image: "https://s4.bukalapak.com/bukalapak-kontenz-production/content_attachments/35174/original/SMOK_NORD.jpeg"));
    dataBulan.add(DataBulan(namaBulan: "Uwell Caliburn", descriptonBulan: "Rp. xxx.xxx,-", image: "https://s0.bukalapak.com/bukalapak-kontenz-production/content_attachments/35175/original/uwell_caliburn_p6386_12747_image.jpeg"));
    dataBulan.add(DataBulan(namaBulan: "SMOK Infinix", descriptonBulan: "Rp. xxx.xxx,-", image: "https://s1.bukalapak.com/bukalapak-kontenz-production/content_attachments/35176/original/SMOK_INFINIX_edt.jpg"));
    dataBulan.add(DataBulan(namaBulan: "Suorin Edge", descriptonBulan: "Rp. xxx.xxx,-", image: "https://s2.bukalapak.com/bukalapak-kontenz-production/content_attachments/35177/original/SUORIN_EDGE_edt.jpg"));
    dataBulan.add(DataBulan(namaBulan: "Thumb Turbo Vape", descriptonBulan: "Rp. xxx.xxx,-", image: "https://s2.bukalapak.com/bukalapak-kontenz-production/content_attachments/35177/original/SUORIN_EDGE_edt.jpg"));
  }

  //note: ini dari API
  List<Data> dataListApi = [];
  final String apiUrl = "https://reqres.in/api/users?per_page=15";

  Future<ListModel> getListRepository(BuildContext context) async {
    var uri = Uri.parse(apiUrl).replace();
    try{
      final response = await http
          .get(uri, headers: {})
          .timeout(const Duration(seconds: 30));
      if (response.statusCode == HttpStatus.ok) {
        print(jsonDecode(response.body));
        return ListModel.fromJson(jsonDecode(response.body));
      } else {
        return ListModel.withError("Gagal load data");
      }
    } on TimeoutException catch (_) {
      return ListModel.withError("Waktu Habis, Silahkan coba kembali");
    }
  }

  void getListViewModel(BuildContext context) async {
    final response = await getListRepository(context);
    if (response.error == null) {
      setState(() {
        dataListApi = response.data!;
      });
    } else {
      print(response.error.toString());
    }
  }

  @override
  void initState() {
    //setData();
    getListViewModel(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("Contoh List"),
        ),
        body: Container(
          margin: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //--------------- ListView Horizontal ---------------------
                const Text("Data Bulan Horizontal", style: TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(height: 16,),
                SizedBox(
                    width: double.infinity,
                    height: 180,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: dataListApi.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => loginScreen()
                                )
                            );
                            //print("data : ${dataBulan[index].namaBulan}");
                          },
                          child: Container(
                              width: 150,
                              alignment: Alignment.center,
                              child: Card(
                                child: Container(
                                  width: double.infinity,
                                  margin: const EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Image.network(dataListApi[index].avatar.toString(), width: 70, height: 70,),
                                      const SizedBox(height: 16,),
                                      Text(dataListApi[index].firstName.toString(), style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                      const SizedBox(height: 8,),
                                      Text(dataListApi[index].email.toString()),
                                    ],
                                  ),
                                ),
                              )
                          ),
                        );
                      },
                    )
                ),

                //-------------------- ListView Vertical ---------------------
                SizedBox(height: 16,),
                const Text("Data Bulan Vertical", style: TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(height: 16,),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Image.network(dataListApi[index].avatar.toString(), width: 70, height: 70,),
                            const SizedBox(width: 12,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(dataListApi[index].firstName.toString(), style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                const SizedBox(height: 8,),
                                Text(dataListApi[index].email.toString()),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: dataListApi.length,
                ),
              ],
            ),
          ),
        )
    );
  }
}


