import 'package:bulanut_mobile_v5/screens/ImageScanner/Button_Widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:convert';

class GrafikBaslat extends StatefulWidget {
  @override
  _GrafikBaslatState createState() => _GrafikBaslatState();
}

class _GrafikBaslatState extends State<GrafikBaslat> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 200),
        Center(
            child: ButtonWidget(
                text: "GRAFİĞİ GÖSTER",
                onClicked: () =>
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return LineChartSample1();
                        })),
                color: Colors.black26)),
      ],
    );
  }
}

class LineChartSample1 extends StatefulWidget {
  @override
  _LineChartSample1State createState() => _LineChartSample1State();
}

class _LineChartSample1State extends State<LineChartSample1> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    List<int> rand_array = [1, 2, 3, 4, 5, 6, 7];
    int d1, d2;
    int random_yaz() {
      for (int i = 0; i < 7; i++) {
        rand_array[i] = 1 + math.Random().nextInt(19);
      }
      d1 = rand_array[0];
      d2 = rand_array[1];
    }

    return Scaffold(
      backgroundColor: Color(0xff232d37),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Taranan Fındık Görüntü Sayıları",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
          Stack(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.0,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15), //KUTUNUN OVALLİĞİ
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 18.0, left: 12.0, top: 24, bottom: 12),
                    child: LineChart(
                      showAvg ? avgData() : mainData(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 60,
                height: 34,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      showAvg = !showAvg;
                    });
                  },
                  child: Text(
                    'Değiştir',
                    style: TextStyle(
                        fontSize: 12,
                        color: showAvg ? Colors.blue : Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.blueGrey),
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(60.0, 60.0)),
                ),
                onPressed: () {
                  setState(() {
                    //random_yaz();
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.refresh,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 50.0),
                    Text(
                      'Grafik Değerlerini Güncelle',
                    ),
                  ],
                ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                minimumSize: MaterialStateProperty.all<Size>(Size(60.0, 60.0)),
              ),
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Text(
                    'Ana Sayfa Dön',
                  ),
                ],
              ),
            ),

          ),
        ],
      ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 35,
          rotateAngle: 35,
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return 'Giresun';
              case 2:
                return 'Ordu';
              case 4:
                return 'Van';
              case 6:
                return 'Diğer';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTitles: (value) {
            switch (value.toInt()) {
              case 5:
                return '50';
              case 10:
                return '100';
              case 15:
                return '150';
              case 20:
                return '200';
              case 25:
                return '250';
              case 30:
                return '300';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 6,
      minY: 0,
      maxY: 35,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 2),
            FlSpot(2, 3),
            FlSpot(4, 5),
            FlSpot(6, 7),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
            gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.yellow,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 35,
          rotateAngle: 35,
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return 'Giresun';
              case 2:
                return 'Ordu';
              case 4:
                return 'Van';
              case 6:
                return 'Diğer';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTitles: (value) {
            switch (value.toInt()) {
              case 5:
                return '10';
              case 10:
                return '30';
              case 15:
                return '50';
              case 20:
                return '70';
              case 25:
                return '90';
              case 30:
                return '110';
            }
            return '';
          },
          reservedSize: 60,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: Colors.red, width: 2)),
      minX: 0,
      maxX: 6,
      minY: 0,
      maxY: 35,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 7),
            FlSpot(2, 12),
            FlSpot(4, 5),
            FlSpot(6, 26),
          ],
          isCurved: true,
          colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2),
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2),
          ],
          barWidth: 4,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(show: true, colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)
                .withOpacity(0.1),
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)
                .withOpacity(0.1),
          ]),
        ),
      ],
    );
  }
}
