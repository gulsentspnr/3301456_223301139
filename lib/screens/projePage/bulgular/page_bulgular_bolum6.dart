import 'package:flutter/material.dart';

class PageBulgularBolum6 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageBulgularBolum6State();
  }
}

class _PageBulgularBolum6State extends State {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120.0,
          child: DrawerHeader(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.cyan.shade600,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.format_indent_decrease,
                      color: Colors.white,
                      size: 35.0,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Center(
                      child: Text(
                        "InceptionV3 Mimarisi ile Yapılan\n Sınıflandırma Sonuçları",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'RobotoMono',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(
                          "   InceptionV3, özgün veri setindeki görüntülerle eğitilmesi sonucu %100 sınıflandırma başarısı elde etmiştir. Model bu eğitim ve sınıflandırma işlemini 265,42 dakikada tamamlamıştır. Verilerin InceptionV3 mimarisi ile sınıflandırılması sonucunda elde edilen doğruluk ve kayıp grafikleriyle birlikte, ilgili parametre değerleri (EK-1) Şekil 6’da gösterilmiştir.",
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontSize: 17,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Stack(
                        children: [
                          Container(
                              height: 600,
                              width: MediaQuery.of(context).size.width,
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "images/project/sonuclar/z_Inception-v3_Matlab.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ])),
                          Container(
                              child: Text(
                                "(Görüntüyü yana kaydırabilirsiniz)",
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                  fontFamily: 'RobotoMono',
                                  fontSize: 15,
                                ),
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, bottom: 80.0),
                      child: Text(
                        "EK-1 -> Şekil 6- InceptionV3 mimarisine ait Doğruluk ve Kayıp grafikleri",
                        style: TextStyle(
                          fontFamily: 'RobotoMono',
                          fontSize: 15,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
