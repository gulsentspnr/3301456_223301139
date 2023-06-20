import 'package:flutter/material.dart';

class PageBulgularBolumHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageBulgularBolumHomeState();
  }
}

class _PageBulgularBolumHomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 90.0,
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
                      Icons.memory,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Center(
                      child: Text(
                        "Bulgular",
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
                          "   Bu bölümde Şekil 3’te görüldüğü üzere; GoogLeNet, ResNet-50, Shuffle-Net, MobileNet-v2, ResNet-18, InceptionV3 ve AlexNet evrişimsel sinir ağları mimarilerinin derin öğrenme yöntemleri ile eğitilmesi sonucu elde edilen özellikler yardımıyla sınıflandırılması, sonuçları ve detayları yer almaktadır.",
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
                              height: 250,
                              width: MediaQuery.of(context).size.width,
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "images/project/pSekil3.jpg"),
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
                          left: 10.0, right: 10.0, bottom: 20.0),
                      child: Text(
                        "Şekil 3- Önerilen Modelin Akış ve İşleyiş Şeması",
                        style: TextStyle(
                          fontFamily: 'RobotoMono',
                          fontSize: 15,
                          height: 1.5,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(
                          "   Yapılan çalışmada Matlab R2021b uygulaması içinde bulunan derin öğrenme mimarileri kullanılmıştır. Verilerin makine öğrenme ve sınıflandırma işlemleri Tablo 4’te sistem özellikleri belirtilen bilgisayar yardımıyla yapılmıştır.",
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
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, top: 10.0),
                      child: Text(
                        "Tablo 4- Derin öğrenme için kullanılan sistem özellikleri",
                        style: TextStyle(
                          fontFamily: 'RobotoMono',
                          fontSize: 15,
                          height: 1.5,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, bottom: 20.0),
                      child: Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/project/pTablo4.jpg"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, bottom: 80.0),
                      child: ListTile(
                        title: Text(
                          "   Özgün veri setinde bulunan görüntülerin, Tablo 4’te özellikleri belirtilen cihaz ile eğitim ve sınıflandırma işlemleri gerçekleştirilmiştir. Her bir modelin eğitim döngüsü, 8 turdan oluşmuş her turda ise 263 yinelemeye sahiptir. Şekil 3’te belirtilen modellerin sınıflandırma sonuçları başlıklar halinde detaylı bir şekilde verilmiştir.",
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontSize: 17,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.justify,
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
