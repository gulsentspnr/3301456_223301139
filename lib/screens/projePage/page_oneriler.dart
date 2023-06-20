import 'package:flutter/material.dart';

import 'document_proje.dart';

class PageOneriler extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PageOnerilerState();
  }
}

class _PageOnerilerState extends State {
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
                      Icons.post_add,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Center(
                      child: Text(
                        "ÖNERİLER",
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
          child: ListView.builder(
            itemCount: oneriler.length,
            itemBuilder: (BuildContext context, int index) => Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(oneriler[index].oneriMetin,
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