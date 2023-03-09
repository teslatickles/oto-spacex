import 'package:flutter/material.dart';
import 'package:oto/models/Launch.dart';
import 'package:oto/repositories/LaunchRepository.dart';
import 'package:oto/Helpers/LaunchCard.dart';

class LaunchPage extends StatefulWidget {
  LaunchPage({
    key,
  }) : super(key: key);

  final LaunchRepository _launchRepository = new LaunchRepository();

  @override
  _LaunchPageState createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  Future<List<Launch>> launchResponse;
  dynamic itemAsJson;
  dynamic launchCard;
  String launchCardCount;

  @override
  void initState() {
    super.initState();
    launchResponse = widget._launchRepository.fetchLaunches();
  }

  @override
  Widget build(BuildContext context) {
    return launchPage(launchResponse);
  }

  Future<String> getLaunchCount(Future<List<Launch>> launches) async {
    int cardNumber;
    String cardCount = await launches.then((value) => value.length.toString());
    launches.then((x) => {x.forEach((y) => cardNumber = x.indexOf(y))});

    return cardNumber.toString();
  }

  Widget launchCountDisplay(Future<List<Launch>> launches) {
    return Container(
        child: FutureBuilder<List<dynamic>>(
            future: launches,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Center(
                  child: Text(""),
                );
              }
            }));
  }

  updateLaunchNumber(int index) {
    launchCardCount = index.toString();
  }

  displayLaunchNumber() {
    return Container(
      child: Text(launchCardCount),
    );
  }

  Widget launchPage(Future<List<Launch>> launches) {
    // searchLaunches(String query) {
    //   launches.asStream().forEach((x) => {x.contains(query)});
    // }
    return Stack(
      children: [
        Center(
          child: FutureBuilder<List<dynamic>>(
              future: launches,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return snapshot.hasData
                    ? ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          // var item = snapshot.data.atElement(index);
                          var item = snapshot.hasData
                              ? snapshot.data[index]
                              : 'NO DATA FROM SNAPSHOT $snapshot[$index]';

                          int _index = index;
                          // updateLaunchNumber(index);

                          return LaunchCard(null, item);
                        },
                      )
                    : Center(
                        child: launchLoadingPage(),
                      );
              }),
        ),
        // Text(_index.toString())
      ],
    );
  }
}

launchLoadingPage() {
  return Center(
    child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(5.0, 50.0, 5.0, 20.0),
          child: Image.network(
              'https://media0.giphy.com/media/l4pTldWDec8WamJUc/giphy.gif'),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 15.0),
          child: CircularProgressIndicator(),
        ),
      ],
    ),
  );
}
