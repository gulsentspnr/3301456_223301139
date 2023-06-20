import 'dart:ui';

import 'package:bulanut_mobile_v5/models/proje_kategoriler.dart';
import 'package:bulanut_mobile_v5/screens/projePage/page_bulgular.dart';
import 'package:bulanut_mobile_v5/screens/projePage/page_ekler.dart';
import 'package:bulanut_mobile_v5/screens/projePage/page_giris.dart';
import 'package:bulanut_mobile_v5/screens/projePage/page_kaynaklar.dart';
import 'package:bulanut_mobile_v5/screens/projePage/page_kisaltmalar.dart';
import 'package:bulanut_mobile_v5/screens/projePage/page_oneriler.dart';
import 'package:bulanut_mobile_v5/screens/projePage/page_ozet.dart';
import 'package:bulanut_mobile_v5/screens/projePage/page_proje_icerik.dart';
import 'package:bulanut_mobile_v5/screens/projePage/page_sonuc_tartisma.dart';
import 'package:bulanut_mobile_v5/screens/projePage/page_yontem_teknik.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

class BuildProje extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BuildProjeState();
  }
}

class _BuildProjeState extends State<BuildProje> {
  TabController tabController;

  void initState() {
    sayfaGecisi(0);
    super.initState();
  }

  int selectedIndex = 0;
  List<Widget> listWidgets = [
    PageProjeIcerik(),
    PageOzet(),
    PageGiris(),
    PageYontemTeknik(),
    PageBulgular(),
    PageSonucTartisma(),
    PageOneriler(),
    PageKaynaklar(),
    PageEkler(),
    PageKisaltmalar(),
  ];

  int _selectedIndex = 0;
  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }

  ProjeKategoriler selectedProjectKategori = ProjeKategoriler(bolumismi: "", icon: Icons.home);
  List<ProjeKategoriler> kategoriler = [
    ProjeKategoriler(bolumismi: " PROJE İÇERİĞİ", icon: Icons.home),
    ProjeKategoriler(bolumismi: " ÖZET", icon: Icons.auto_stories),
    ProjeKategoriler(bolumismi: " GİRİŞ", icon: Icons.input),
    ProjeKategoriler(bolumismi: " YÖNTEM ve TEKNİKLER", icon: Icons.image_search_rounded),
    ProjeKategoriler(bolumismi: " BULGULAR", icon: Icons.reduce_capacity),
    ProjeKategoriler(bolumismi: " SONUÇ ve TARTIŞMA", icon: Icons.assignment_outlined),
    ProjeKategoriler(bolumismi: " ÖNERİLER", icon: Icons.post_add),
    ProjeKategoriler(bolumismi: " KAYNAKLAR", icon: Icons.book_outlined),
    ProjeKategoriler(bolumismi: " EKLER", icon: Icons.business_center_outlined),
    ProjeKategoriler(bolumismi: " KISALTMA VE SİMGELER", icon: Icons.text_fields),
    ProjeKategoriler(bolumismi: "", icon: null),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Proje Bölümleri",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey.shade600,
          elevation: 0.0,
        ),
        //drawerScrimColor: Colors.transparent,
        drawer: Container(
          width: 310,
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
                  DrawerHeader(
                    child: Container(
                      decoration: BoxDecoration(
                      color: Colors.blueGrey.shade600,
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("images/tubitakLogo.jpg"),
                              radius: 40.0,
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Center(
                            child: Text(
                              "Derin Öğrenme \nAlgoritmaları\n ile \nFındıkların \nSınıflandırılması",
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
                  Expanded(
                    child: ListView.builder(
                      itemCount: kategoriler.length,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                        color: _selectedIndex != null && _selectedIndex == index
                            ? Colors.blueGrey
                            : null,
                        child: ListTile(
                          onTap: () {
                            setState(() {
                              if(index!=10) {
                                _onSelected(index);
                                sayfaGecisi(index);
                                Navigator.pop(context);
                                selectedProjectKategori = kategoriler[index];
                              }
                            });
                          },
                          leading: Icon(
                            kategoriler[index].icon,
                            color: Colors.black,
                          ),
                          title: Text(
                            kategoriler[index].bolumismi,
                            style: _selectedIndex != null &&
                                    _selectedIndex == index
                                ? TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.yellow.shade600,
                                    fontSize: 16.0,
                                  )
                                : null,
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
        body: listWidgets[selectedIndex],
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage())),
          icon:Icon(Icons.arrow_back, color: Colors.yellow.shade700,),
          label: Text("Çıkış"),
          backgroundColor: Colors.blueGrey.shade600,
        ),
      ),
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
        case 4:
          selectedIndex = index;
          break;
        case 5:
          selectedIndex = index;
          break;
        case 6:
          selectedIndex = index;
          break;
        case 7:
          selectedIndex = index;
          break;
        case 8:
          selectedIndex = index;
          break;
        case 9:
          selectedIndex = index;
          break;
        default:
          break;
      }
    });
  }
}
