import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:project1/model/DataBulan.dart';
import 'package:project1/model/DataPromo.dart';

import 'loginScreen.dart';

class gridview extends StatefulWidget {
  const gridview({Key? key}) : super(key: key);

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  List<DataPromo> dataPromo = [];
  List<DataBulan> dataBulan = [];


  void setData() {
    dataPromo.add(DataPromo(namaBarang: "Sofia from Shisha Sticks", descriptonBarang: "Harga: 1,2 Miliar", image: "https://jejakpiknik.com/wp-content/uploads/2021/04/article-0-18E34E9B00000578-423_636x382-630x380.jpg"));
    dataPromo.add(DataPromo(namaBarang: "Magic Valley Vapors SX350J", descriptonBarang: "Harga: 154 Juta", image: "https://th.bing.com/th/id/OIP.9-Q3owklTuBQ5xHSOvaM7QHaFg?pid=ImgDet&rs=1"));
    dataPromo.add(DataPromo(namaBarang: "TI26650 Top Hat", descriptonBarang: "Harga: 144 Juta", image: "https://storage.googleapis.com/finansialku_media/wordpress_media/2020/05/420663a1-harganya-bikin-nangis-ini-dia-7-vape-termahal-di-dunia-06-finansialku.jpg"));
    dataPromo.add(DataPromo(namaBarang: "Top Hat Mods", descriptonBarang: "Harga: 141 Juta", image: "https://www.expensive-world.com/wp-content/uploads/2020/11/top-hate-1024x765.png"));
    dataPromo.add(DataPromo(namaBarang: "Otto Carter", descriptonBarang: "Harga: 42 Juta", image: "https://i.pinimg.com/originals/34/f3/e3/34f3e3d2c995c42aed69182cb258784e.jpg"));
    dataPromo.add(DataPromo(namaBarang: "Gepetto Elite V2", descriptonBarang: "Harga: 35 Juta", image: "https://thevapesnob.s3.us-west-1.amazonaws.com/wp-content/uploads/2015/10/22170000/IMG_7504-1024x695.jpg"));
    dataPromo.add(DataPromo(namaBarang: "Boxer Mod DNA 250C", descriptonBarang: "Harga: 7,2 Juta", image: "https://www.expensive-world.com/wp-content/uploads/2020/11/boxer-box-mod-boxer-mod-classic-dna-250c-bf-20700-tc-box-mod-6615286743099_1800x1800-1.jpg"));
    dataPromo.add(DataPromo(namaBarang: "HexOhm V3", descriptonBarang: "Harga: 6,5 Juta", image: "https://thebestvape.com/wp-content/uploads/2016/09/sicboy-hexohm-v3.jpg"));
    dataPromo.add(DataPromo(namaBarang: "Duke SX", descriptonBarang: "Harga: 5 Juta", image: "https://th.bing.com/th/id/R.50aaf4b6e9fa135ef9e785fce11df240?rik=EBcTttfEQLjMng&riu=http%3a%2f%2fvapebeat.com%2fwp-content%2fuploads%2f2016%2f06%2fIMG_3007-1024x683.jpg&ehk=vzmmEqMlqmSkaG5BQHykxVnD91QO4%2fE%2fRWWrT5WLNqc%3d&risl=&pid=ImgRaw&r=0"));
    dataPromo.add(DataPromo(namaBarang: "SX Mini", descriptonBarang: "Harga: 3 Juta", image: "https://s2.bukalapak.com/img/7803201161/w-1000/MOD_VAPOR_VAPE___SX_MINI_G_CLASS_KEVLAR_NAVY.jpg"));
  }

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
    setData();
    setDat2();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Produk"),
      ),
      body: Container(

        margin: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Promo hari ini", style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(height: 16,),
              SizedBox(
                  width: double.infinity,
                  height: 180,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: dataPromo.length,
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
                                    Image.network(dataPromo[index].image, width: 70, height: 70,),
                                    const SizedBox(height: 16,),
                                    Text(dataPromo[index].namaBarang, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                    const SizedBox(height: 8,),
                                    Text(dataPromo[index].descriptonBarang),
                                  ],
                                ),
                              ),
                            )
                        ),
                      );
                    },
                  )
              ),
              const SizedBox(height: 16,),
              const Text("Rekomendasi", style: TextStyle(fontWeight: FontWeight.bold),),
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
