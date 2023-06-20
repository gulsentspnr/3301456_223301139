import 'dart:ui';

import 'package:bulanut_mobile_v5/screens/projePage/bulgular/page_bulgular_bolum2.dart';
import 'package:bulanut_mobile_v5/screens/projePage/bulgular/page_bulgular_bolum3.dart';
import 'package:bulanut_mobile_v5/screens/projePage/bulgular/page_bulgular_bolum4.dart';
import 'package:bulanut_mobile_v5/screens/projePage/bulgular/page_bulgular_bolum5.dart';
import 'package:bulanut_mobile_v5/screens/projePage/bulgular/page_bulgular_bolum6.dart';
import 'package:bulanut_mobile_v5/screens/projePage/bulgular/page_bulgular_bolum7.dart';
import 'package:flutter/material.dart';

import 'bulgular/page_bulgular_bolum1.dart';
import 'bulgular/page_bulgular_bolum_home.dart';

class PageBulgular extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PageBulgularState();
  }

}

class BulgularBolumler{
  String bulgularBolumName;
  IconData icon;

  BulgularBolumler({this.bulgularBolumName,this.icon});
}

BulgularBolumler selectedBulgularBolum=BulgularBolumler(bulgularBolumName: "",icon: Icons.apps);
List<BulgularBolumler> bulgularBolumler=[
  BulgularBolumler(bulgularBolumName: "Bulgular",icon: Icons.add_chart),
  BulgularBolumler(bulgularBolumName: "GoogLeNet Mimarisi ile Yapılan Sınıflandırma Sonuçları",icon: Icons.format_indent_decrease),
  BulgularBolumler(bulgularBolumName: "ResNet-50 Mimarisi ile Yapılan Sınıflandırma Sonuçları",icon: Icons.format_indent_decrease),
  BulgularBolumler(bulgularBolumName: "Shuffle-Net Mimarisi ile Yapılan Sınıflandırma Sonuçları",icon: Icons.format_indent_decrease),
  BulgularBolumler(bulgularBolumName: "MobileNetV2 Mimarisi ile Yapılan Sınıflandırma Sonuçları",icon: Icons.format_indent_decrease),
  BulgularBolumler(bulgularBolumName: "ResNet-18 Mimarisi ile Yapılan Sınıflandırma Sonuçları",icon: Icons.format_indent_decrease),
  BulgularBolumler(bulgularBolumName: "InceptionV3 Mimarisi ile Yapılan Sınıflandırma Sonuçları",icon: Icons.format_indent_decrease),
  BulgularBolumler(bulgularBolumName: "AlexNet Mimarisi ile Yapılan Sınıflandırma Sonuçları",icon: Icons.format_indent_decrease),

];

class _PageBulgularState extends State{

  int _selectedIndex = 0;
  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }
  int selectedIndex = 0;
  List<Widget> listWidgets = [
    PageBulgularBolumHome(),
    PageBulgularBolum1(),
    PageBulgularBolum2(),
    PageBulgularBolum3(),
    PageBulgularBolum4(),
    PageBulgularBolum5(),
    PageBulgularBolum6(),
    PageBulgularBolum7(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Bulgular Bölümleri",
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
                                "Bulgular",
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
                      itemCount: bulgularBolumler.length,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                            color: _selectedIndex != null && _selectedIndex == index
                                ? Colors.blueGrey
                                : null,
                            child: ListTile(
                              onTap: () {
                                setState(() {
                                  if(index!=8){
                                    _onSelected(index);
                                    sayfaGecisi(index);
                                    Navigator.pop(context);
                                    selectedBulgularBolum = bulgularBolumler[index];
                                  }
                                });
                              },
                              title: Text(
                                bulgularBolumler[index].bulgularBolumName,
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
                                bulgularBolumler[index].icon,
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
        case 5:
          selectedIndex = index;
          break;
        case 6:
          selectedIndex = index;
          break;
        case 7:
          selectedIndex = index;
          break;
        default:
          break;
      }
    });
  }
}