import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageProjeIcerik extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageProjeIcerikState();
  }
}

class _PageProjeIcerikState extends State {
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
                      Icons.home,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Center(
                      child: Text(
                        "PROJE İÇERİĞİ",
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
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) => Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 500,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("images/project/pHome.jpg"),
                            ),
                          ),
                        ),
                      ),
                      subtitle: ListTile(
                        title: Text(
                          "Derin Öğrenme Algoritmaları ile Fındıkların Sınıflandırılması\n\n",
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontSize: 18,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Stack(
                                children: [
                                  Container(
                                      height: 770,
                                      width: MediaQuery.of(context).size.width,
                                      child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color:
                                                          Colors.cyan.shade400,
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      children: [
                                                        /*Text(
                                                          "İçindekiler  ...................................................... i\n"
                                                          "Kısaltmalar ve Simgeler Listesi ..................  iv\n"
                                                          "ÖZET .............................................................. v\n"
                                                          "1. GİRİŞ .......................................................... 1\n"
                                                          "1.1. Literatür Taraması ................................. 2\n"
                                                          "1.2. Projenin Amacı ve Önemi ...................... 3\n"
                                                          "1.3. Projenin İçerdiği Yenilik (Özgünlük) Unsuru \nve İlgili Olduğu Teknoloji Alanları.................. 4\n"
                                                          "2. YÖNTEM ve TEKNİKLER ........................... 5\n"
                                                          "2.1. Görüntü Edinme ..................................... 5\n"
                                                          "2.2. Veri Seti .................................................. 6\n"
                                                          "2.3. Evrişimsel Sinir Ağları ............................ 7\n"
                                                          "2.3.1. GoogLeNet .......................................... 7\n"
                                                          "2.3.2. ResNet-50 ........................................... 7\n"
                                                          "2.3.3. Shuffle-Net........................................... 7\n"
                                                          "2.3.4. MobileNet-v2 ...................................... 7\n"
                                                          "2.3.5. ResNet-18 ........................................... 8\n"
                                                          "2.3.6. InceptionV3 ........................................ 8\n"
                                                          "2.3.7. AlexNet................................................ 8\n"
                                                          "2.4. İş Akış Çizelgesi .................................... 8\n"
                                                          "3. BULGULAR ................................................ 9\n"
                                                          "3.1. GoogLeNet Mimarisi ile Yapılan Sınıflandırma Sonuçları .............................. 10\n"
                                                          "3.2. ResNet-50 Mimarisi ile Yapılan Sınıflandırma Sonuçları .............................. 10\n"
                                                          "3.3. Shuffle-Net Mimarisi ile Yapılan Sınıflandırma Sonuçları .............................. 10\n"
                                                          "3.4. MobileNetV2 Mimarisi ile Yapılan Sınıflandırma Sonuçları .............................. 10\n"
                                                          "3.5. ResNet-18 Mimarisi ile Yapılan Sınıflandırma Sonuçları .............................. 10\n"
                                                          "3.6. InceptionV3 Mimarisi ile Yapılan Sınıflandırma Sonuçları .............................. 10\n"
                                                          "3.7. AlexNet Mimarisi ile Yapılan Sınıflandırma Sonuçları .............................. 10\n"
                                                          "4. SONUÇ ve TARTIŞMA ............................. 11\n"
                                                          "5. ÖNERİLER ................................................ 12\n"
                                                          "6. KAYNAKLAR ............................................ 12\n"
                                                          "7. EKLER ...................................................... 14",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'RobotoMono',
                                                            fontSize: 15,
                                                            height: 1.5,
                                                          ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),*/
                                                        Text(
                                                          "İçindekiler ................................................................................................................................. i\n"
                                                          "Kısaltmalar ve Simgeler Listesi .............................................................................................. ii\n"
                                                          "ÖZET ........................................................................................................................................ v\n"
                                                          "1. GİRİŞ .................................................................................................................................... 1\n"
                                                          "1.1. Literatür Taraması ............................................................................................................ 2\n"
                                                          "1.2. Projenin Amacı ve Önemi ................................................................................................ 3\n"
                                                          "1.3. Projenin İçerdiği Yenilik (Özgünlük) Unsuru ve İlgili Olduğu Teknoloji Alanları............. 4\n"
                                                          "2. YÖNTEM ve TEKNİKLER ..................................................................................................... 5\n"
                                                          "2.1. Görüntü Edinme ............................................................................................................... 5\n"
                                                          "2.2. Veri Seti ............................................................................................................................ 6\n"
                                                          "2.3. Evrişimsel Sinir Ağları .....................................................................................................  7\n"
                                                          "2.3.1. GoogLeNet .................................................................................................................... 7\n"
                                                          "2.3.2. ResNet-50 ..................................................................................................................... 7\n"
                                                          "2.3.3. Shuffle-Net .................................................................................................................... 7\n"
                                                          "2.3.4. MobileNet-v2 ................................................................................................................ 7\n"
                                                          "2.3.5. ResNet-18 ..................................................................................................................... 8\n"
                                                          "2.3.6. InceptionV3 .................................................................................................................. 8\n"
                                                          "2.3.7. AlexNet ......................................................................................................................... 8\n"
                                                          "2.4. İş Akış Çizelgesi .............................................................................................................. 8\n"
                                                          "3. BULGULAR ......................................................................................................................... 9\n"
                                                          "3.1. GoogLeNet Mimarisi ile Yapılan Sınıflandırma Sonuçları .......................................... 10\n"
                                                          "3.2. ResNet-50 Mimarisi ile Yapılan Sınıflandırma Sonuçları ............................................ 10\n"
                                                          "3.3. Shuffle-Net Mimarisi ile Yapılan Sınıflandırma Sonuçları .......................................... 10\n"
                                                          "3.4. MobileNetV2 Mimarisi ile Yapılan Sınıflandırma Sonuçları ....................................... 10\n"
                                                          "3.5. ResNet-18 Mimarisi ile Yapılan Sınıflandırma Sonuçları ............................................ 10\n"
                                                          "3.6. InceptionV3 Mimarisi ile Yapılan Sınıflandırma Sonuçları ......................................... 10\n"
                                                          "3.7. AlexNet Mimarisi ile Yapılan Sınıflandırma Sonuçları ................................................ 10\n"
                                                          "4. SONUÇ ve TARTIŞMA ...................................................................................................... 11\n"
                                                          "5. ÖNERİLER ........................................................................................................................ 12\n"
                                                          "6. KAYNAKLAR .................................................................................................................... 12\n"
                                                          "7. EKLER ...............................................................................................................................14\n",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'RobotoMono',
                                                            fontSize: 15,
                                                            height: 1.5,
                                                          ),
                                                          textAlign:
                                                              TextAlign.justify,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ])),
                                ],
                              ),
                            ),
                            Text(
                              "\n Detaylara 'Proje Bölümleri' Menüsünden Erişebilirsiniz \n\n",
                              style: TextStyle(
                                fontFamily: 'RobotoMono',
                                fontSize: 15,
                                height: 1.5,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
