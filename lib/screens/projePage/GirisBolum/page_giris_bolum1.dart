import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../document_proje.dart';

class PageGirisBolum1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageGirisBolum1State();
  }
}

class _PageGirisBolum1State extends State {
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
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Center(
                      child: Text(
                        "Literatür Taraması",
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
              itemCount: pageGirisBolum1.length,
              itemBuilder: (BuildContext context, int index) {
                if(index<13){
                  return Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(
                              pageGirisBolum1[index].pageGirisBolum1,
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
                  );
                }
                else if(index==13){
                  return Padding(
                    padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 10.0,bottom: 80.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 240,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/project/pTablo1.jpg"),
                        ),
                      ),
                    ),
                  );
                }

              }
          ),
        ),
        //
      ],
    );
  }
}
