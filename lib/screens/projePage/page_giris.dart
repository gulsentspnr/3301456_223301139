import 'dart:ui';

import 'package:flutter/material.dart';

import 'GirisBolum/page_giris_bolum1.dart';
import 'GirisBolum/page_giris_bolum2.dart';
import 'GirisBolum/page_giris_bolum3.dart';
import 'GirisBolum/page_giris_bolum_home.dart';

class PageGiris extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageGirisState();
  }
}

class GirisBolumler {
  String girisBolumName;
  IconData icon;

  GirisBolumler({this.girisBolumName, this.icon});
}

GirisBolumler selectedGirisBolum = GirisBolumler(girisBolumName: "", icon: Icons.search);
List<GirisBolumler> girisBolumler = [
  GirisBolumler(girisBolumName: "Giriş", icon: Icons.input),
  GirisBolumler(girisBolumName: "Literatür Taraması", icon: Icons.search),
  GirisBolumler(girisBolumName: "Projenin Amacı ve Önemi", icon: Icons.memory),
  GirisBolumler(girisBolumName:
          "Projenin İçerdiği Yenilik (Özgünlük) Unsuru ve İlgili Olduğu Teknoloji Alanları",
      icon: Icons.emoji_symbols),
];

class _PageGirisState extends State {

  int _selectedIndex = 0;
  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }
  int selectedIndex = 0;
  List<Widget> listWidgets = [
    PageGirisBolumHome(),
    PageGirisBolum1(),
    PageGirisBolum2(),
    PageGirisBolum3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Giriş Bölümleri",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Colors.blueGrey.shade300,
        elevation: 0.0,
      ),
      endDrawer: Drawer(
        child: Container(
          width: 200,
          height: double.infinity,
          decoration: BoxDecoration(
              color: Color.fromARGB(180, 250, 250, 250),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(31, 38, 135, 0.4),
                  blurRadius: 8.0,
                )
              ],
              border: Border(
                  right: BorderSide(
                color: Colors.white70,
              ))),
          child: Stack(
            children: [
              SizedBox(
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 4.0,
                      sigmaY: 4.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Colors.grey.withOpacity(0.0),
                        Colors.blueGrey.withOpacity(0.2),
                      ])),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 100.0,
                    child: DrawerHeader(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade600,
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Icon(
                                Icons.clear_all,
                                color: Colors.white,
                                size: 35.0,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Center(
                              child: Text(
                                "Giriş",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.yellow.shade700,
                                  fontFamily: 'RobotoMono',
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: girisBolumler.length,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                        color: _selectedIndex != null && _selectedIndex == index
                            ? Colors.blueGrey
                            : null,
                        child: ListTile(
                          onTap: () {
                            setState(() {
                              _onSelected(index);
                              sayfaGecisi(index);
                              Navigator.pop(context);
                              selectedGirisBolum = girisBolumler[index];
                            });
                          },
                          title: Text(
                            girisBolumler[index].girisBolumName,
                            style: _selectedIndex != null &&
                                    _selectedIndex == index
                                ? TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.yellow.shade600,
                                    fontSize: 16.0,
                                  )
                                : null,
                          ),
                          leading: Icon(
                            girisBolumler[index].icon,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body:listWidgets[selectedIndex],
    );
  }

  void sayfaGecisi(int index) async {
    setState(() {
      switch (index) {
        case 0:
          selectedIndex = index;
          break;
        case 1:
          selectedIndex = index;
          break;
        case 2:
          selectedIndex = index;
          break;
        case 3:
          selectedIndex = index;
          break;
        default:
          break;
      }
    });
  }
}
