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
        primarySwatch: Colors.blue,
      ),
      home: NexusPage(title: 'SpaceX Nexus'),
    );
  }
}

class NexusPage extends StatefulWidget {
  NexusPage({Key key, this.title}) : super(key: key);

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
      padding: EdgeInsets.fromLTRB(0, 0, 0, 2),
      child: Text(
        'Home Base',
        style: styleOptions,
      ),
    ),
    Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 2),
      child: Text(
        'Launches',
        style: styleOptions,
      ),
    ),
    Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 2),
      child: Text(
        'Options',
        style: styleOptions,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _handlePaging(_index),
      backgroundColor: Colors.black87,
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
        selectedWidget = LaunchPage();
        return selectedWidget;
      case 2:
        selectedWidget = settingsPage();
        return selectedWidget;
      default:
        return selectedWidget;
    }
  }
}
