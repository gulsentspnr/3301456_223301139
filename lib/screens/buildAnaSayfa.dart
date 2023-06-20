import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' hide Colors;

class BuildAnaSayfa extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BuildAnaSayfaState();
  }
}

class _BuildAnaSayfaState extends State<BuildAnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(102, 184, 54, 68),
          ),
          child: SizedBox(
            height: 190.0,
            child: DrawerHeader(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(45)),
                ),
                child: ListTile(
                  title: Column(
                    children: [
                      Center(
                        child: Text(
                          "B U L A N U T",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(-4, 102, 184, 54),
                            fontFamily: 'RobotoMono',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "images/project/bulanut_tools.jpg"),
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
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) => Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              "     Çalışmada; fındıkları derin öğrenme algoritmalarıyla sınıflandırmak, fındığın tarım ve ekonomideki değerinin sürdürülmesine katkı sunmak, ayrıştırma sırasında harcanan emek, zaman ve maliyetin minimuma düşürülmesini  sağlamak amaçlanmıştır. \n",
                              style: TextStyle(
                                fontFamily: 'RobotoMono',
                                fontSize: 16,
                                height: 1.5,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade600,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          TouchZoom(),
                        ],
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: ListTile(
                          title: Text(
                            "     Bununla birlikte fındıkların toplanması ve pazarlanması aşamasında meydana gelen olumsuzlukların ortadan kaldırılması, üreticilerin daha hızlı, pratik ve etkili hareket edebilmeleri için fındıkların doğru bir şekilde sınıflandırılmasıyla, ithalat ve ihracatının önünü açmak hedeflenmektedir.\n",
                            style: TextStyle(
                              fontFamily: 'RobotoMono',
                              fontSize: 16,
                              height: 1.5,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          subtitle: Column(
                            children: [
                              Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Container(
                                      height: 550,
                                      width: MediaQuery.of(context).size.width,
                                      child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 20.0),
                                              child: Image(
                                                image: AssetImage(
                                                    "images/project/bulanut_details2.jpg"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ])),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(40.0)),
                                        color: Colors.white54,
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.green,
                                        size: 45.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "     Bu çalışmada, Giresun, Ordu ve Van fındık çeşitlerinin görselleri kullanılmıştır. Ülkemizde yetiştirilen bölgelerden temin edilen üç farklı fındık türünün bulunduğu veri seti toplamda 3.627 fındık görüntüsünden oluşmaktadır. Bu veri seti tarafımızdan oluşturulmuştur.\n",
                                  style: TextStyle(
                                    fontFamily: 'RobotoMono',
                                    fontSize: 16,
                                    height: 1.5,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
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
}

class TouchZoom extends StatefulWidget {
  @override
  State<TouchZoom> createState() => _TouchZoomState();
}

class _TouchZoomState extends State<TouchZoom>
    with SingleTickerProviderStateMixin {
  Animation _animation;
  AnimationController _animationController;
  double myAngle = 0;

  @override
  void initState() {
    super.initState();
    _animationController = new AnimationController(
        vsync: this, duration: Duration(microseconds: 500));
    _animation = Tween(begin: 1.0, end: 3.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      });
  }

  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (_animationController.isCompleted) {
            // _animationController.reverse();
            rotate();
          } else {
            _animationController.forward();
          }
        },
        child: Transform.rotate(
          alignment: FractionalOffset.center,
          angle: myAngle,
          // transform: Matrix4.diagonal3(Vector3(_animation.value,_animation.value,_animation.value)),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/project/bulanut_home1.jpg"),
                ),
              ),
            ),
          ),
        ));
  }

  rotate() async {
    for (var i = 0; i < 50; i++) {
      await Future.delayed(Duration(microseconds: 150), () {
        setState(() {
          myAngle += 0.2;
        });
      });
    }
  }
}
