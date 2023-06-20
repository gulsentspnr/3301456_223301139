import 'package:bulanut_mobile_v5/widgets/app_bar_models.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'buildAnaSayfa.dart';
import 'buildFindikTuru2.dart';
import 'buildProje.dart';
import 'buildEkstra.dart';
import 'hakkimizda.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  var deger = -1;
  int selectedIndex = 0;
  int initialActiveIndexNumber=0;
  List<Widget> listWidgets = [
    BuildAnaSayfa(),
    Center(
      child: Text("Proje"),
    ),
    BuildFindikTuru(),
    BuildEkstra(),
    Center(
        child: Text("Hakkımızda"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      //onWillPop: _onBackPressed,
      //onWillPop: () async => false,
      child: Scaffold(
        //SafeArea (üstteki paneli kapatır)
        appBar: AppBarHomePage(context),
        body: listWidgets[selectedIndex],
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.blue.shade700,
          elevation: 8,
          gradient: LinearGradient(
            colors: [Colors.blueGrey.shade600, Colors.blueGrey.shade900],
          ),
          color: Colors.white,
          items: [
            TabItem(icon: Icons.home, title: 'Ana Sayfa'),
            TabItem(icon: Icons.map, title: 'Proje'),
            TabItem(icon: Icons.add_a_photo, title: 'Fındık Türü'),
            TabItem(icon: Icons.apps, title: 'Daha Fazla'),
            TabItem(icon: Icons.people, title: 'Hakkımızda'),

          ],
          initialActiveIndex: initialActiveIndexNumber,
          onTap: (int i) => sayfaGecisi(i),
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
          Navigator.push(context, MaterialPageRoute(builder: (context) => BuildProje()));
          break;
        case 2:
          selectedIndex = index;
          break;
        case 3:
          selectedIndex = index;
          break;
        case 4:
          initialActiveIndexNumber=0;
          selectedIndex = index;
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Hakkimizda()));
          break;
      }
    });
  }
  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => new AlertDialog(
          title: Text("UYGULAMA KAPATILACAK !!!"),
          content: Text("Çıkmak İstediğinizden Emin Misiniz ?"),
          actions: <Widget>[
            GestureDetector(
              onTap: () => Navigator.of(context).pop(false),
              child: Text("Hayır"),
            ),
            SizedBox(
              height: 16.0,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pop(true),
              child: Text("Evet"),
            ),
          ],
        )) ??
        false;
  }
}
