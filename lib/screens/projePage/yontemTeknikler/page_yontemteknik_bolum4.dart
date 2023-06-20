import 'package:flutter/material.dart';

class PageYontemTeknikBolum4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageYontemTeknikBolum4State();
  }
}

class _PageYontemTeknikBolum4State extends State {
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
                      Icons.calendar_today,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Center(
                      child: Text(
                        "İş Akış Çizelgesi",
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
                          "   Çalışmanın doğru ve etkili bir şekilde planlanması amacıyla iş akış çizelgesi oluşturulmuştur. İş paketlerinin aylara göre dağılışı ve ekip içi iş bölümü eşit şekilde dağıtılarak projenin zamanında tamamlanması sağlanmıştır.\n\n"
                          "   İş paketi 1, literatür taraması ve çalışma planının hazırlanmasıyla; İş paketi 2, Fındıkların veri setinin oluşturulmasıyla; İş paketi 3, veri setinin derin öğrenme algoritmaları kullanılarak modellenmesiyle; İş paketi 4, modelleme analizlerinin gerçekleştirilip, sonuçların değerlendirilmesiyle; İş paketi 5, elde edilen veriler ışığında raporun hazırlanıp, sisteme yüklenmesiyle başarılı kabul edilmiştir.\n\n"
                              "    İş paketleri zamanında ve başarılı bir şekilde gerçekleştirilmiştir.",
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
                        "Tablo 3. İş Akış Çizelgesi",
                        style: TextStyle(
                          fontFamily: 'RobotoMono',
                          fontSize: 15,
                          height: 1.5,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, top: 1.0, bottom: 80.0),
                      child: Container(
                        height: 270,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/project/pTablo3.jpg"),
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
