import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "../models/Launch.dart";

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class LaunchCard extends StatefulWidget {
  final dynamic item;
  LaunchCard(key, this.item) : super(key: key);

  @override
  _LaunchCardState createState() => _LaunchCardState();
}

class _LaunchCardState extends State<LaunchCard> with RouteAware {
  String itemAsString;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context));
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  updateLaunchCount() {
    print("updateLaunchCount called!");
  }

  Widget launchCountDisplay(Launch launch) {
    print("display launch count called!");
    // print(launch.toJson().length);
    return Container(
      child: Text("count goes here!!!"),
    );
  }

  @override
  void didPush() {
    // Route was pushed onto navigator and is now topmost route.
  }

  @override
  void didPopNext() {
    // Covering route was popped off the navigator.
    print("Is this one working");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      child: Stack(
        children: <Widget>[
          launchContent(widget.item),
          // launchThumbnail(),
        ],
      ),
    );
  }

  Widget launchThumbnail() {
    return Container(
      height: 65.0,
      margin: EdgeInsets.symmetric(vertical: 50.0),
      alignment: FractionalOffset.centerLeft,
      child: Image.asset("lib/images/spacef9.png"),
    );
  }

  Widget launchContent(dynamic item) {
    // itemAsString = json.encode(item);

    dynamic rocketNames = {
      "5e9d0d95eda69955f709d1eb": "Falcon 1",
      "5e9d0d95eda69973a809d1ec": "Falcon 9",
      "5e9d0d95eda69974db09d1ed": "Falcon Heavy",
      "5e9d0d96eda699382d09d1ee": "Starship"
    };

    Launch launch = item as Launch;

    Widget dataIconCombo(dynamic icon, String data) {
      return data == null
          ? Container()
          : Padding(
              padding: const EdgeInsets.fromLTRB(2.0, 8.0, 0.0, 8.0),
              child: Row(
                children: <Widget>[
                  icon != null
                      ? Icon(
                          icon,
                          color: Color.fromRGBO(74, 105, 189, 5),
                          size: 20.0,
                        )
                      : Container(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 5.5, 0.90, 0.0),
                    child: Text(
                      data,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: data == launch.name
                              ? Color.fromRGBO(225, 225, 225, 1)
                              : Color.fromRGBO(229, 80, 57, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                  )
                ],
              ),
            );
    }

    String convertRocketGuidToName(String rocketGuid) {
      return rocketNames[launch.rocket];
    }

    Widget cardContent(Column column) {
      return Container(
        margin: EdgeInsets.fromLTRB(15.0, 18.0, 0.0, 0.0),
        constraints: BoxConstraints.expand(),
        child: column,
      );
    }

    Widget lineBreak() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 6.0),
        height: 2.4,
        width: 90.0,
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
        color: Color.fromRGBO(226, 173, 169, 100.0),
      );
    }

    return Container(
        height: 250.0,
        margin: EdgeInsets.fromLTRB(7.0, 0.0, 0.0, 0.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(125, 178, 69, 255),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black12,
                blurRadius: 20.0,
                offset: Offset(0.0, 20.0)),
          ],
        ),
        child: cardContent(
          Column(
            children: <Widget>[
              dataIconCombo(null, launch.name),
              lineBreak(),
              dataIconCombo(FontAwesomeIcons.rocket,
                  convertRocketGuidToName(launch.rocket)),
              dataIconCombo(
                  FontAwesomeIcons.calendarAlt,
                  launch.staticFireDateUtc != null
                      ? formatDate(launch.staticFireDateUtc)
                      : launch.staticFireDateUtc),
              dataIconCombo(FontAwesomeIcons.handPeace,
                  launch.success ? "Success" : "Failure"),
            ],
          ),
        ));
  }

  formatDate(String datetime) {
    return datetime.substring(0, 10);
  }
}

// Widget cardEntry(dynamic property) {
//   return property != null
//       ? Padding(
//           padding: const EdgeInsets.all(1.0),
//           child: Row(
//             children: <Widget>[
//               Icon(
//                 FontAwesomeIcons.hatCowboySide,
//                 color: Color.fromRGBO(183, 61, 24, 5),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 18.0),
//                 child: Text(
//                   property,
//                   textAlign: TextAlign.right,
//                   style: TextStyle(
//                     color: Color.fromRGBO(127, 80, 57, 10),
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               )
//             ],
//           ),
//         )
//       : Padding(padding: const EdgeInsets.all(1.0));
// }
