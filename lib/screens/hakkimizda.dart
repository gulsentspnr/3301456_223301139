import 'dart:developer';

import 'package:bulanut_mobile_v5/screens/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import '../loginPage.dart';

enum Options { delete, update }

class Hakkimizda extends StatefulWidget {
  Hakkimizda();

  @override
  State<StatefulWidget> createState() {
    return _HakkimizdaState();
  }
}

class _HakkimizdaState extends State<Hakkimizda> with TickerProviderStateMixin {
  TabController tabController;
  final myController = TextEditingController();

  void initState() {
    tabController = TabController(length: sayfalar.length, vsync: this);
    super.initState();
  }

  List<Widget> sayfalar = [
    Tab(
      text: "Gülsen TAŞPINAR",
      icon: Icon(Icons.person_pin),
    ),
    Tab(
      text: "Dr. Öğr. Üyesi Ahmet Cevahir ÇINAR",
      icon: Icon(
        Icons.person_pin,
      ),
    ),
    Tab(
      text: "TEŞEKKÜR",
      icon: Icon(Icons.book_sharp),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 27.0,
              ),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage())),
            ),
            backgroundColor: Colors.blueGrey.shade600,
            title: Text("Hakkımızda"),
            titleSpacing: 0,
            actions: [
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Login_pages1()));
                  }),
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                color: Colors.black26,
              ),
            ),
            bottom: TabBar(
              labelColor: Colors.white,
              labelStyle:
                  TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              indicatorColor: Colors.grey.shade700,
              //tıklanınca altını çizen kod
              unselectedLabelColor: Colors.yellow.shade700,
              isScrollable: true,
              //kayar menü
              unselectedLabelStyle: TextStyle(fontSize: 12.0),
              controller: tabController,
              tabs: sayfalar,
            ),
          ),
          body: Container(
            child: TabBarView(
              controller: tabController,
              children: bodydesing,
            ),
          ),
        ),
      ),
    );
  }
}

List<Widget> bodydesing = [
  Column(
    children: <Widget>[
      buildExpandedGTaspinar(),
      buildKayarYazi(),
    ],
  ),
  Column(
    children: <Widget>[
      buildExpandedACCinar(),
      buildKayarYazi(),
    ],
  ),
  Column(
    children: <Widget>[
      buildExpandedTesekkur(),
      buildKayarYazi(),
    ],
  ),
];

Widget buildKayarYazi() {
  return Row(
    children: [
      Flexible(
        fit: FlexFit.tight,
        flex: 1,
        child: Column(
          children: <Widget>[
            Container(
              height: 2,
              color: Colors.yellow.shade700,
            ),
            Container(
                height: 28,
                color: Colors.blueGrey.shade600,
                child: Marquee(
                  text:
                      '@Tüm Hakları Saklıdır. İzinsiz Kopyalanamaz ve Çoğaltılamaz!!!                 ',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                  scrollAxis: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  blankSpace: 20.0,
                  velocity: 50.0,
                  pauseAfterRound: Duration(seconds: 1),
                  showFadingOnlyWhenScrolling: true,
                  fadingEdgeStartFraction: 0.1,
                  fadingEdgeEndFraction: 0.1,
                  startPadding: 15.0,
                  numberOfRounds: 50,
                  accelerationDuration: Duration(seconds: 1),
                  accelerationCurve: Curves.linear,
                  decelerationDuration: Duration(milliseconds: 500),
                  decelerationCurve: Curves.easeOut,
                )),
            Container(
              height: 2,
              color: Colors.yellow.shade700,
              //color: Colors.yellow.shade700,
            ),
          ],
        ),
      ),
    ],
  );
}

Widget buildExpandedGTaspinar() {
  return Expanded(
    child: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/flag/turkey.png"),
            ),
            title: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      radius: 75,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage("images/gulsen.jpg"),
                          fit: BoxFit.cover,
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Gülsen TAŞPINAR",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Selçuk Üniversitesi \nBilgisayar Mühendisliği",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            subtitle: ListTile(
              title: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      "    \n",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              subtitle: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Eğitim Durumu",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "-Süleyman Demirel Üni. Bilgisayar Sistemleri Öğretmenliği \n-Selçuk Üni. Bilgisayar Mühendisliği \n-Selçuk Üni. Fen Bilimleri Enst. Bilişim Tek. Müh.",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Doğum Yeri ve Doğum Tarihi",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "-Konya, 1983",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "E-posta",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "-gulsentspnr@gmail.com \n",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Çalışma Alanları",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "-Veri Madenciliği\n-Derin Öğrenme\n-Yapay Zeka\n",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
  );
}

Widget buildExpandedACCinar() {
  return Expanded(
    child: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/flag/turkey.png"),
            ),
            title: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Danışman",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      radius: 75,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage("images/cevahircinar.jpg"),
                          fit: BoxFit.cover,
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Dr. Öğr. Üy. Ahmet Cevahir ÇINAR",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Selçuk Üniversitesi \nBilgisayar Mühendisliği \nAna Bilim Dalı",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            subtitle: ListTile(
              title: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      "-",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              subtitle: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Ünvanı",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "-Dr. Öğr. Üyesi\n Bölüm Başkan Yardımcısı \n",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Doğum Yeri ve Doğum Tarihi",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "-",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "E-posta",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "-accinar@selcuk.edu.tr\n",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Web Sayfası",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "-\n",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Telefon / Faks",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "-(0 332 223 34 15)\n",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Çalıştığı Kurum",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "-Selçuk Üniversitesi, Teknoloji Fakültesi, Bilgisayar Mühendisliği Bölümü, Yazılım Anabilim Dalı\n",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Çalışma Alanları",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "- \n- \n- \n- \n- \n-\n-",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
  );
}

Widget buildExpandedTesekkur() {
  return Expanded(
    child: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/flag/turkey.png"),
            ),
            title: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "TEŞEKKÜRLER",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      radius: 75,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage("images/tesekkur.png"),
                          fit: BoxFit.cover,
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                        color: Colors.grey.shade600,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                '   Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 223301139 numaralı Gülsen TAŞPINAR tarafından 20 Haziran 2023 günü yapılmıştır.'),
                        TextSpan(
                            text:
                                "\n \n Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR hocama sonsuz teşekkür ederim."),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
  );
}
