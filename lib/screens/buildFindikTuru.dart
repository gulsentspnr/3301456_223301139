import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/bottom_navigation_bar_item.dart';
import 'ImageScanner/page/ImageGenerator.dart';
import 'ImageScanner/page/ImageScanner.dart';

class BuildFindikTuru extends StatefulWidget {
  BuildFindikTuru({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BuildFindikTuruState();
  }
}

class _BuildFindikTuruState extends State<BuildFindikTuru> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[ImageScanner(), ImageGenerator()];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(45)),
              color: Color.fromRGBO(102, 184, 54, 68),
            ),
            child: SizedBox(
              height: 120.0,
              child: DrawerHeader(
                child: Container(
                  decoration: BoxDecoration(),
                  child: ListTile(
                    title: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: BottomNavigationBar(
                            backgroundColor: Colors.brown.shade500,
                            items: [
                              BottomNavigationBarItem(
                                icon: Icon(Icons.image_search),
                                label: "Görüntüyü Tara",
                              ),
                              BottomNavigationBarItem(
                                icon: Icon(Icons.image),
                                label:"Görüntü Yükle",
                              ),
                            ],
                            type: BottomNavigationBarType.fixed,
                            currentIndex: _selectedIndex,
                            unselectedItemColor: Colors.white24,
                            selectedItemColor: Colors.white,
                            selectedLabelStyle:
                                TextStyle(fontWeight: FontWeight.bold),
                            selectedFontSize: 15.0,
                            iconSize: 40.0,
                            onTap: _onItemTapped,
                            elevation: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 150),
        Expanded(
          child: Center(
            child: Column(
              children: [
                _widgetOptions.elementAt(_selectedIndex),
              ],
            ),
          ),
        ),
        SizedBox(height: 80),
        Padding(
          padding: const EdgeInsets.only(
              top: 8.0, left: 8.0, right: 8.0, bottom: 30.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(45)),
              color: Color.fromRGBO(102, 184, 54, 68),
            ),
            child: SizedBox(
              height: 80.0,
              child: Column(
                children: [
                  Container(
                    child: ListTile(
                      title: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                "FINDIĞIN TÜRÜNÜ BELİRLE",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'RobotoMono',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("images/mutlu_findik.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
