import 'dart:ui';

import 'package:bulanut_mobile_v5/screens/projePage/yontemTeknikler/page_yontemteknik_bolum1.dart';
import 'package:bulanut_mobile_v5/screens/projePage/yontemTeknikler/page_yontemteknik_bolum2.dart';
import 'package:bulanut_mobile_v5/screens/projePage/yontemTeknikler/page_yontemteknik_bolum3.dart';
import 'package:bulanut_mobile_v5/screens/projePage/yontemTeknikler/page_yontemteknik_bolum4.dart';
import 'package:bulanut_mobile_v5/screens/projePage/yontemTeknikler/page_yontemteknik_bolum_home.dart';
import 'package:flutter/material.dart';

class PageYontemTeknik extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PageYontemTeknikState();
  }

}

class YontemTeknikBolumler{
  String yontemTeknikBolumName;
  IconData icon;

  YontemTeknikBolumler({this.yontemTeknikBolumName,this.icon});
}

YontemTeknikBolumler selectedYontemBolum=YontemTeknikBolumler(yontemTeknikBolumName: "",icon: Icons.camera);
List<YontemTeknikBolumler> yontemTeknikBolum=[
  YontemTeknikBolumler(yontemTeknikBolumName: "Yöntem ve Teknikler",icon: Icons.memory),
  YontemTeknikBolumler(yontemTeknikBolumName: "Görüntü Edinme",icon: Icons.camera),
  YontemTeknikBolumler(yontemTeknikBolumName: "Veri Seti",icon: Icons.archive),
  YontemTeknikBolumler(yontemTeknikBolumName: "Evrişimsel Sinir Ağları",icon: Icons.account_tree),
  YontemTeknikBolumler(yontemTeknikBolumName: "İş Akış Çizelgesi",icon: Icons.calendar_today),
];

class _PageYontemTeknikState extends State{

  int _selectedIndex = 0;
  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }
  int selectedIndex = 0;
  List<Widget> listWidgets = [
    PageYontemTeknikBolumHome(),
    PageYontemTeknikBolum1(),
    PageYontemTeknikBolum2(),
    PageYontemTeknikBolum3(),
    PageYontemTeknikBolum4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Yöntem Ve Teknikler Bölümleri",
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
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.clear_all,
                                  color: Colors.white,
                                  size: 35.0,
                                ),
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    "Yöntem Ve Teknikler",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.yellow.shade700,
                                      fontFamily: 'RobotoMono',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
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
                      itemCount: yontemTeknikBolum.length,
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
                                  selectedYontemBolum = yontemTeknikBolum[index];
                                });
                              },
                              title: Text(
                                yontemTeknikBolum[index].yontemTeknikBolumName,
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
                                yontemTeknikBolum[index].icon,
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
        case 4:
          selectedIndex = index;
          break;
        default:
          break;
      }
    });
  }
}