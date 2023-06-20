import 'package:bulanut_mobile_v5/sql/sql_pagedesign.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:bulanut_mobile_v5/utils/location.dart';
import 'package:bulanut_mobile_v5/utils/weather.dart';
import '../sql/firebase_pagedesign.dart';
import 'ImageScanner/page/ImageScanner.dart';
import 'graphics_and_animation.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    MainScreen(),
    GrafikBaslat(),
    bilgi_cek(),
    firebase_connect()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.white, Colors.blue],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(45)),
                color: Colors.blue,
              ),
              child: SizedBox(
                height: 110.0,
                child: DrawerHeader(
                  child: Container(
                    decoration: BoxDecoration(),
                    child: ListTile(
                      title: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: BottomNavigationBar(
                              backgroundColor: Colors.blue,
                              items: [
                                BottomNavigationBarItem(
                                  icon: Icon(Icons.cloud),
                                  label: "Hava Durumu",
                                  backgroundColor: Colors.blue,
                                ),
                                BottomNavigationBarItem(
                                  icon: Icon(Icons.graphic_eq),
                                  label: "Grafik",
                                  backgroundColor: Colors.blue,
                                ),
                                BottomNavigationBarItem(
                                  icon: Icon(Icons.book_outlined),
                                  label: "Not Defteri",
                                  backgroundColor: Colors.blue,
                                ),
                                BottomNavigationBarItem(
                                  icon: Icon(Icons.data_usage_rounded),
                                  label: "Veri Tabanı",
                                  backgroundColor: Colors.blue,
                                ),
                              ],
                              type: BottomNavigationBarType.shifting,
                              currentIndex: _selectedIndex,
                              unselectedItemColor: Colors.white24,
                              selectedItemColor: Colors.white,
                              selectedLabelStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                              selectedFontSize: 15.0,
                              iconSize: 30.0,
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
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) => Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        _widgetOptions.elementAt(_selectedIndex),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.blue],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 8.0, left: 8.0, right: 8.0, bottom: 8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black12, Colors.blue]),
                  ),
                  child: Center(
                    child: SpinKitFadingCircle(
                      color: Colors.white,
                      size: 80.0,
                      duration: Duration(milliseconds: 1200),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                )
              ],
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

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  LocationHelper locationData;

  Future<void> getLocationData() async {
    locationData = LocationHelper();
    await locationData.getCurrentLocation();

    if (locationData.latitude == null || locationData.longitude == null) {
      print("Konum bilgileri gelmiyor.");
    } else {}
  }

  void getWeatherData() async {
    await getLocationData();

    WeatherData weatherData = WeatherData(locationData: locationData);
    await weatherData.getCurrentTemperature();

    if (weatherData.currentTemperature == null ||
        weatherData.currentCondition == null) {
      print("API den sıcaklık veya durum bilgisi boş dönüyor.");
    }
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return MainScreen2(
        weatherData: weatherData,
      );
    }));
  }

  int temperature = 0.round();
  Icon weatherDisplayIcon = Icon(Icons.cloud, size: 75.0, color: Colors.white);
  AssetImage backgroundImage = AssetImage('assets/bulutlu.png');
  String city = 'Konum Yok';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: backgroundImage,
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              child: Text("Hava Durumu Bilgisi Güncelle"),
              onPressed: () {
                getWeatherData();
              },
            ),
          ),
          Container(
            child: weatherDisplayIcon,
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              '$temperature°',
              style: TextStyle(
                  color: Colors.white, fontSize: 80.0, letterSpacing: -5),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              city,
              style: TextStyle(
                  color: Colors.white, fontSize: 50.0, letterSpacing: -5),
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
        ],
      ),
    );
  }
}

class MainScreen2 extends StatefulWidget {
  final WeatherData weatherData;

  MainScreen2({@required this.weatherData});

  @override
  _MainScreen2State createState() => _MainScreen2State();
}

class _MainScreen2State extends State<MainScreen2> {
  int temperature = 0.round();
  Icon weatherDisplayIcon = Icon(Icons.cloud, size: 75.0, color: Colors.white);
  AssetImage backgroundImage = AssetImage('assets/bulutlu.png');
  String city = 'Konum Yok';

  void updateDisplayInfo(WeatherData weatherData) {
    try {
      setState(() {
        temperature = weatherData.currentTemperature.round();
        city = weatherData.city;
        WeatherDisplayData weatherDisplayData =
            weatherData.getWeatherDisplayData();
        backgroundImage = weatherDisplayData.weatherImage;
        weatherDisplayIcon = weatherDisplayData.weatherIcon;
      });
    } catch (e) {}
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateDisplayInfo(widget.weatherData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: backgroundImage,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 35,
            ),
            Container(
              child: weatherDisplayIcon,
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                '$temperature°',
                style: TextStyle(
                    color: Colors.white, fontSize: 80.0, letterSpacing: -5),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                city,
                style: TextStyle(
                    color: Colors.white, fontSize: 50.0, letterSpacing: -5),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
          ],
        ),
      ),
    );
  }
}
