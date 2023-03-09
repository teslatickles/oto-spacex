import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:oto/pages/LaunchPage.dart';
import 'package:oto/pages/MainPage.dart';
import 'package:oto/pages/SettingsPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final dynamic hex = 0xFF222f3e;
  final MaterialColor kPrimaryColor = const MaterialColor(
    0xFF222f3e,
    const <int, Color>{
      50: const Color(0xFF222f3e),
      100: const Color(0xFF222f3e),
      200: const Color(0xFF222f3e),
      300: const Color(0xFF222f3e),
      400: const Color(0xFF222f3e),
      500: const Color(0xFF222f3e),
      600: const Color(0xFF222f3e),
      700: const Color(0xFF222f3e),
      800: const Color(0xFF222f3e),
      900: const Color(0xFF222f3e),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpaceX Nexus',
      theme: ThemeData(primarySwatch: kPrimaryColor),
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

  final MaterialColor kPrimaryColor = const MaterialColor(
    0xFF222f3e,
    const <int, Color>{
      50: const Color(0xFF222f3e),
      100: const Color(0xFF222f3e),
      200: const Color(0xFF222f3e),
      300: const Color(0xFF222f3e),
      400: const Color(0xFF222f3e),
      500: const Color(0xFF222f3e),
      600: const Color(0xFF222f3e),
      700: const Color(0xFF222f3e),
      800: const Color(0xFF222f3e),
      900: const Color(0xFF222f3e),
    },
  );

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
      backgroundColor: Color.fromRGBO(72, 101, 135, 120),
      bottomNavigationBar: _bottomBar(),
    );
  }

  Widget _bottomBar() {
    return BottomNavigationBar(
      currentIndex: _index,
      onTap: (int index) => setState(() => _index = index),
      backgroundColor: kPrimaryColor,
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
    switch (index) {
      case 0:
        return mainPage();
      case 1:
        return LaunchPage(
          key: null,
        );
      case 2:
        return SettingsPage();
      default:
        return NexusPage(
          title: 'SpaceX Nexus',
        );
    }
  }
}
