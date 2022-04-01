import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../model/DataBulan.dart';
import 'navDraw.dart';

class navDraw_main extends StatefulWidget {
  const navDraw_main({Key? key}) : super(key: key);

  @override
  State<navDraw_main> createState() => _navDraw_mainState();
}

class _navDraw_mainState extends State<navDraw_main> {
  final List<String> imgList = [
    'https://images.tokopedia.net/img/cache/1208/NsjrJu/2022/3/28/52c71e71-a854-41a1-9db2-1447d57a7ff3.jpg.webp?ect=3g',
    'https://images.tokopedia.net/img/cache/1190/wmEwCC/2022/3/18/23679484-fc6e-4687-a78d-965411b25aae.png.webp?ect=4g',
    'https://images.tokopedia.net/img/cache/600/tqaKCd/2022/3/18/18561b8c-253b-4b28-b55b-5a796d6d0bac.png.webp?ect=4g',
  ];

  List<DataBulan> dataBulan = [];

  void setData() {
    dataBulan.add(DataBulan(namaBulan: "Januari", descriptonBulan: "Bulan Ke 1", image: "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2021/9/23/2fb2da53-88ae-4988-bf8f-2da8a705b630.jpg.webp?ect=4g"));
    dataBulan.add(DataBulan(namaBulan: "Februari", descriptonBulan: "Bulan Ke 2", image: "https://images.tokopedia.net/img/cache/300-square/product-1/2020/9/11/85364116/85364116_ee5b7911-f37d-4ece-b042-d04ed6b9df7e_1000_1000.webp?ect=4g"));
    dataBulan.add(DataBulan(namaBulan: "Maret", descriptonBulan: "Bulan Ke 3", image: "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/2/19/d7d65d6f-d744-4bc6-af09-9e9a24a5bae5.jpg.webp?ect=4g"));
    dataBulan.add(DataBulan(namaBulan: "April", descriptonBulan: "Bulan Ke 4", image: "https://images.tokopedia.net/img/cache/300-square/VqbcmM/2021/11/30/37d719ba-4719-4ee7-84fb-d683646f6cae.jpg.webp?ect=4g"));
    dataBulan.add(DataBulan(namaBulan: "Mei", descriptonBulan: "Bulan Ke 5", image: "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/3/25/b8479e91-fcde-4f4a-88b7-492bd688e932.jpg.webp?ect=4g"));
  }

  @override
  void initState() {
    setData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var ukuran = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Drawer"),
      ),
      drawer: navDraw(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //--------------- CarouselSlider Horizontal ---------------------
              Container(
                  margin: const EdgeInsets.only(top: 16),
                  height: 220,
                  child: CarouselSlider.builder(
                    itemCount: imgList.length,
                    itemBuilder: (context, index, _) {
                      return Container(
                          width: ukuran.width,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                offset: const Offset(3, 3),
                                color: Colors.grey.shade400)
                          ]),
                          child: GestureDetector(
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    width: ukuran.width,
                                    height: ukuran.height,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            topRight: Radius.circular(5)),
                                        image: DecorationImage(
                                          image : NetworkImage(imgList[index]),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onTap: () async {},
                          )
                      );
                    },
                    options: CarouselOptions(
                      onPageChanged: (index, reason) async {
                      },
                      height: 180,
                      enableInfiniteScroll: true,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 5),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: true,
                      aspectRatio: 2.0,
                    ),
                  )
              ),

              //--------------- ListView Horizontal ---------------------
              const SizedBox(height: 16,),
              const Text("Data Bulan Horizontal", style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(height: 16,),
              SizedBox(
                  width: double.infinity,
                  height: 180,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: dataBulan.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          print("data : ${dataBulan[index].namaBulan}");
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
                                    Image.network(dataBulan[index].image, width: 70, height: 70,),
                                    const SizedBox(height: 16,),
                                    Text(dataBulan[index].namaBulan, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                    const SizedBox(height: 8,),
                                    Text(dataBulan[index].descriptonBulan),
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
              const SizedBox(height: 16,),
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
                          Image.network(dataBulan[index].image, width: 70, height: 70,),
                          const SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(dataBulan[index].namaBulan, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 8,),
                              // Text(dataBulan[index].descriptonBulan),
                              Text(dataBulan[index].descriptonBulan)
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: dataBulan.length,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
