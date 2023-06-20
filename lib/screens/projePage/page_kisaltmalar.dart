import 'package:flutter/material.dart';

import 'document_proje.dart';

class PageKisaltmalar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PageKisaltmalarState();
  }

}

class _PageKisaltmalarState extends State{
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
                      Icons.text_fields,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Center(
                      child: Text(
                        "KISALTMA VE SİMGELER",
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
            itemCount: kisaltmalar.length,
            itemBuilder: (BuildContext context, int index) => Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(style: BorderStyle.solid, color: Colors.yellow.shade700),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.map),
                            SizedBox(width: 5.0,),
                            Text(kisaltmalar[index].kisaMetin+":",
                              style: TextStyle(
                                fontFamily: 'RobotoMono',
                                fontSize: 18,
                                height: 1.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      subtitle: Text(kisaltmalar[index].kisaMetinAciklama,
                        style: TextStyle(
                          fontFamily: 'RobotoMono',
                          fontSize: 17,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.left,
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
}