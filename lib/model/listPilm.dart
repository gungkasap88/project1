import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project1/model/listFilm.dart';
import 'package:http/http.dart' as http;

class listPilm extends StatefulWidget {
  const listPilm({Key? key}) : super(key: key);

  @override
  State<listPilm> createState() => _listPilmState();
}

class _listPilmState extends State<listPilm> {

  //note: ini dari API
  List<Search> dataListApi = [];
  final String apiUrl = "https://fake-movie-database-api.herokuapp.com/api?s=batman";

  Future<listMovie> getListRepository(BuildContext context) async {
    var uri = Uri.parse(apiUrl).replace();
    try{
      final response = await http
          .get(uri, headers: {})
          .timeout(const Duration(seconds: 30));
      if (response.statusCode == HttpStatus.ok) {
        print(jsonDecode(response.body));
        return listMovie.fromJson(jsonDecode(response.body));
      } else {
        return listMovie.withError("Gagal load data");
      }
    } on TimeoutException catch (_) {
      return listMovie.withError("Waktu Habis, Silahkan coba kembali");
    }
  }

  void getListViewModel(BuildContext context) async {
    final response = await getListRepository(context);
    if (response.error == null) {
      setState(() {
        dataListApi = response.search!;
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
                          Image.network(
                            dataListApi[index].poster.toString(),
                            width: 70, height: 70,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                width: 70,
                                height: 70,
                                alignment: Alignment.center,
                                child: const Icon(Icons.error_outline, size: 24,),
                              );
                            }
                          ),
                          const SizedBox(width: 12,),
                          Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(dataListApi[index].title.toString(), style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                  const SizedBox(height: 8,),
                                  Text(dataListApi[index].year.toString()),
                                ],
                              )
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
      ),
    );
  }
}
