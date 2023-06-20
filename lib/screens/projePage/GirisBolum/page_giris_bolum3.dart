import 'package:flutter/material.dart';

import '../document_proje.dart';

class PageGirisBolum3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PageGirisBolum3State();
  }

}

class _PageGirisBolum3State extends State{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120.0,
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
                      Icons.emoji_symbols,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Center(
                      child: Text(
                        "Projenin İçerdiği Özgünlük Unsuru \nve İlgili Olduğu Teknoloji Alanları",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'RobotoMono',
                          fontSize: 18,
                          height: 1.5,
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
          child: ListView.builder(
            itemCount:pageGirisBolum3.length,
            itemBuilder: (BuildContext context, int index) => Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(pageGirisBolum3[index].pageGirisBolum3,
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
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
