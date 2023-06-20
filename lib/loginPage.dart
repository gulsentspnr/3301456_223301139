import 'dart:async';
import 'package:bulanut_mobile_v5/login_pages2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';


class Login_pages1 extends StatefulWidget {
  @override
  _Login_pages1State createState() => _Login_pages1State();

}
var kBackgroundColor = Colors.black38;
Color kPrimaryColor = Colors.black;
Color kPrimaryColor2 = Colors.black;
var index=0;
int _counter=180;
Timer _timer;
bool checkBoxValue=false;
String checktext="Animasyonu Durdur!!!";

@override
class UniqueColorGenerator {
  static Random random = new Random();
  static Color getColor() {
    return Color.fromARGB(
        255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }

}


class _Login_pages1State extends State<Login_pages1> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startTimer();
  }

  @override
  void _startTimer(){
    _counter=180;
    if(_timer!=null){
      _timer.cancel();
    }
    _timer=Timer.periodic(Duration(seconds:1),(timer) {
      setState(() {
        if(_counter>0){
          _counter--;
          index++;
          kPrimaryColor=UniqueColorGenerator.getColor();
          index%2!=0?kPrimaryColor2=Colors.red:index%3!=0?kPrimaryColor2=Colors.black:kPrimaryColor2=Colors.lightBlue;
        }
        else{
          _timer.cancel();
        }
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                color: kPrimaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(4.2),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/project/bulanut_logo.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(

              children: [
                Checkbox(
                  value: checkBoxValue,
                  onChanged: (bool value) {
                    setState(() {
                      checkBoxValue=value;
                      if(value==true){
                        checktext="Animasyonu Başlatıldı!!!";
                        _startTimer();
                      }
                      else{
                        checktext="Animasyonu Durduruldu!!!";
                        _timer.cancel();
                      }
                    });
                  },

                ),
                Text(checktext),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "\n Derin Öğrenme Algoritmaları ile  \n Fındıkların Sınıflandırılması",
                          style: Theme.of(context).textTheme.headline5,

                        ),
                        TextSpan(
                          text: "\n \n🇹🇷 Programmer Gülsen TAŞPINAR 🇹🇷",
                          //style: Theme.of(context).textTheme.button,
                          style: TextStyle(color:kPrimaryColor2),

                        )
                      ],
                    ),
                  ),


                  FittedBox(
                    child: GestureDetector(
                      onTap: () {
                        index=0;
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return login_pages2();
                          },
                        ));
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 25),
                        padding:
                        EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromRGBO(102, 184, 54, 18),
                          // color: Colors.black38,
                        ),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "GİRİŞ iÇİN TIKLAYIN",
                              style: Theme.of(context).textTheme.button.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 12),
                            Icon(
                              Icons.arrow_circle_up,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
