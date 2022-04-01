import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'model/DataBulan.dart';

class shop extends StatefulWidget {
  const shop({Key? key}) : super(key: key);

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  final List<String> imgList = [
    'https://static.vecteezy.com/system/resources/previews/000/178/023/non_2x/vector-modern-sale-and-promotion-banner-design-template.jpg',
    'https://image.freepik.com/free-vector/promo-code-sale-banner_180786-45.jpg',
    'https://static.vecteezy.com/system/resources/previews/000/186/038/non_2x/vector-sale-banner-or-voucher-template-design-with-abstract-shapes.jpg',
  ];

  List<DataBulan> dataBulan = [];

  void setDat2() {
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

  @override
  void initState() {
    setDat2();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var ukuran = MediaQuery.of(context).size;
    return Scaffold(
      //appBar: AppBar(
        //title: const Text("Tokoki"),
      //),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              const SizedBox(height: 16,),
              const Text("Data Gridview", style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(height: 16,),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: dataBulan.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).orientation ==
                      Orientation.landscape ? 3: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  childAspectRatio: (1 / 1),
                ),
                itemBuilder: (context,index,) {
                  return InkWell(
                    onTap: () {
                      print("data : ${dataBulan[index].namaBulan}");
                    },
                    child: Container(
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

            ],
          ),
        ),
      ),
    );
  }
}
