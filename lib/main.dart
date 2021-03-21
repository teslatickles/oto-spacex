import 'package:flutter/material.dart';
import 'package:oto/pages/LaunchPage.dart';
import 'package:oto/pages/MainPage.dart';
import 'package:oto/pages/SettingsPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpaceX Nexus',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: NexusPage(title: 'SpaceX Nexus'),
    );
  }
}

class NexusPage extends StatefulWidget {
  NexusPage({key, this.title}) : super(key: key);

  final String title;

  @override
  _NexusPageState createState() => _NexusPageState();
}

class _NexusPageState extends State<NexusPage> {
  int _index = 0;

  static const TextStyle styleOptions =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Padding(
      padding: EdgeInsets.only(bottom: 2.0),
      child: Text(
        'Home Base',
        style: styleOptions,
      ),
    ),
    Padding(
      padding: EdgeInsets.only(bottom: 2.0),
      child: Text(
        'Launches',
        style: styleOptions,
      ),
    ),
    Padding(
      padding: EdgeInsets.only(bottom: 2.0),
      child: Text(
        'Options',
        style: styleOptions,
      ),
    ),
    Padding(
      padding: EdgeInsets.only(bottom: 2.0),
      child: Text(
        'playground',
        style: styleOptions,
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _handlePaging(_index),
      backgroundColor: Color.fromRGBO(0, 175, 180, 200),
      bottomNavigationBar: _bottomBar(),
    );
  }

  Widget _bottomBar() {
    return BottomNavigationBar(
      currentIndex: _index,
      onTap: (int index) => setState(() => _index = index),
      backgroundColor: Colors.blue,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.flight_land),
            title: _widgetOptions[0],
            activeIcon: Icon(Icons.flag)),
        BottomNavigationBarItem(
            icon: Icon(Icons.airplanemode_active),
            title: _widgetOptions[1],
            activeIcon: Icon(Icons.airline_seat_flat_angled)),
        BottomNavigationBarItem(
          icon: Icon(Icons.code),
          title: _widgetOptions[2],
        ),
      ],
      selectedItemColor: Colors.lightGreen,
    );
  }

  Widget _handlePaging(int index) {
    Widget selectedWidget;

    switch (index) {
      case 0:
        selectedWidget = mainPage();
        return selectedWidget;
      case 1:
        selectedWidget = LaunchPage(
          key: null,
        );
        return selectedWidget;
      case 2:
        selectedWidget = SettingsPage();
        return selectedWidget;
      default:
        selectedWidget = NexusPage(
          title: 'SpaceX Nexus',
        );
        return selectedWidget;
    }
  }
}
