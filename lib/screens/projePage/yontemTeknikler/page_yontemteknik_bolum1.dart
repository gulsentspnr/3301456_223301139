import 'package:flutter/material.dart';

class PageYontemTeknikBolum1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageYontemTeknikBolum1State();
  }
}

class _PageYontemTeknikBolum1State extends State {
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
                      Icons.camera,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Center(
                      child: Text(
                        "Görüntü Edinme",
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
                        title: Text("   Bu çalışmada, Giresun, Ordu ve Van fındık çeşitlerinin görselleri kullanılmıştır. Çalışmada kullanılan fındık çeşitleri yetiştikleri bölgelerden temin edilmiştir. Ülkemizde yetiştirilen bu fındık türlerinin hasat zamanı gelmediği için sınırlı sayıda çeşitlilik sağlanmıştır. Çalışmada kullanılan fındık görüntüleri türlerine göre Şekil 2’de görüldüğü gibi kurulan Görüntü Edinme Sistemi ile elde edilmiştir. Oluşturulan görüntülerde açı, çözünürlük, ışık ayarı ve arka plan gölgeleri gibi farklılıkları minimuma indirmek için sabit bir aydınlatma ve kamera sistemi tercih edilmiştir. Uygun ışıklandırma ortamı kullanılan kutu içerisine yerleştirilen fındıklar Şekil 2’de görüldüğü üzere kamera yardımıyla bilgisayar ortamına aktarılmıştır. Kullanılan bu yöntemle hem zamandan tasarruf edilmiş hem de düşük maliyet sağlanmıştır.",
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
                      padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 10.0,bottom: 10.0),
                      child: Container(
                        height: 380,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/project/pSekil2.jpg"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, bottom: 80.0),
                      child: Text(
                        "Şekil 2- Verilerin Elde Edilme Süreci",
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
