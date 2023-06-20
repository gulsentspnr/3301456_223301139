import 'package:flutter/material.dart';

class PageSonucTartisma extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PageSonucTartismaState();
  }

}

class _PageSonucTartismaState extends State {
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
                      Icons.assignment_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Center(
                      child: Text(
                        "SONUÇ ve TARTIŞMA",
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
                          "   Yapılan sınıflandırma işlemlerine ait sonuçlar grafiksel olarak Şekil 4’ de gösterilmiştir. Ayrıca grafikte süre olarak belirtilen sütun, kullanılan algoritmanın öğrenme ve öğrendikleri veriler ile yapmış olduğu sınıflandırmayı dakika cinsinden tamamlama süresini, başarı sütunu ise yüzdesel (%) olarak sınıflandırma başarısını göstermektedir. Toplamda 3.627 adet özgün görüntü verisiyle yapılan sınıflandırmalar sonucunda Şekil 3’te belirtilen modeller göz önünde bulundurularak sırasıyla %99,59, %100, %99,72, %99,04, %99,72, %100, %100 sınıflandırma başarısı elde edilmiştir.",
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
                              height: 400,
                              width: MediaQuery.of(context).size.width,
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "images/project/pSekil4.jpg"),
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
                        "Şekil 4- Fındık sınıflandırma sonuçlarının grafiksel gösterimi",
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
                          "   Ayrıca Şekil 3’te belirtilen Evrişimli Sinir Ağları (CNN) modellerin sınıflandırma başarıları göz önüne alındığında, oluşturulan modeller görüntüler üzerinden fındık türlerinin sınıflandırılmasında Şekil 4’te görüldüğü gibi oldukça başarılı olmuştur. Karşılaştırma yaptığımızda Şekil 4 ve Tablo 5’te görülmektedir ki GoogLeNet modeli ile %99,59 başarıya 158,03 dakikada ulaşmışken, InceptionV3 modeli %100 başarıya ulaşmış ancak 265,42 dakika gibi bir süreye ihtiyaç duymuştur. Bunları göz önünde bulundurarak sınıflandırmada başarı oranının yanı sıra sürenin de bir o kadar önemli faktör olduğu görülmektedir.",
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
                        "Tablo 5- Modellerin süre ve başarı değerleri",
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
                            image: AssetImage("images/project/pTablo5.jpg"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, bottom: 80.0),
                      child: ListTile(
                        title: Text(
                          "   Çalışma genel olarak, bu konuda uzman kişiler dahi olmasa bile geliştirilen modeller yardımı ile hem endüstriyel hem de kişisel alanlarda fındıkların sınıflandırılmasında kolaylık sağlayacaktır.",
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