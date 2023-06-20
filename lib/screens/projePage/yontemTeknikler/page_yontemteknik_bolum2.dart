import 'package:flutter/material.dart';

class PageYontemTeknikBolum2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageYontemTeknikBolum2State();
  }
}

class _PageYontemTeknikBolum2State extends State {
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
                      Icons.archive,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Center(
                      child: Text(
                        "Veri Seti",
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
                        title: Text("   Ülkemizde yetiştirilen bölgelerden temin edilen üç farklı (Giresun, Ordu ve Van) fındık türünün bulunduğu veri seti toplamda 3.627 fındıktan oluşmaktadır. Bu veri seti tarafımızdan oluşturulmuştur. Veri setinde Tablo 2’de görüldüğü üzere 1.165 adet Giresun, 1.324 adet Ordu ve 1.138 adet Van türünde fındık görüntüsü vardır. Görüntülerin arka planları çeşitli yöntemlerle siyaha çevrilmiştir. Bu veri setinde yer alan görüntüler RGB renk uzayına sahip, 2000x2000 piksel boyutunda ve “.jpg” formatınadır. Şekil 1’de görüldüğü gibi veri setindeki her sınıf için rastgele %80 eğitim verileri, %20 test verileri şeklinde bölünerek çalıştırılmıştır.",
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
                          left: 10.0, right: 10.0, top: 20.0),
                      child: Text(
                        "Tablo 2- Fındık Verilerine ait bilgi tablosu.",
                        style: TextStyle(
                          fontFamily: 'RobotoMono',
                          fontSize: 15,
                          height: 1.5,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 1.0,bottom: 80.0),
                      child: Container(
                        height: 310,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/project/pTablo2.jpg"),
                          ),
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
