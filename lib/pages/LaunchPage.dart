import 'package:flutter/material.dart';
import 'package:oto/models/Launch.dart';
import 'package:oto/LaunchRepository.dart';
import 'package:oto/pages/PlaygroundPage.dart';

import 'PlaygroundPage.dart';

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
  // String itemAsString;
  // String launchResponseAsString;

  @override
  void initState() {
    super.initState();
    launchResponse = widget._launchRepository.fetchLaunches();

    // launchResponseAsString = json.encode(launchResponse);
  }

  @override
  Widget build(BuildContext context) {
    return launchPage(launchResponse);
  }

  Widget launchPage(Future<List<Launch>> launches) {
    return Center(
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

                  // itemAsJson = json.decode(item);
                  // var jsonn = itemAsJson['capsules'];
                  return LaunchCard(null, item);
                },
              )
            : Center(
                child: launchLoadingPage(),
              );
      },
    ));
  }

  // newLaunchCard(dynamic item) {
  //   // itemAsString = json.encode(item);

  //   // Launch launch = item as Launch;
  //   // String id = launch.id;
  //   // Object fairings = launch.fairings.toString();
  //   // bool autoUpdate = launch.autoUpdate;
  //   // String rocket = launch.rocket;
  //   // bool success = launch.success;
  //   // String details = launch.details;
  //   // List<dynamic> capsules = launch.capsules;
  //   // List<dynamic> cores = launch.cores.toList();
  //   // List<dynamic> crew = launch.crew.toList();
  //   // int flightNumber = launch.flightNumber;
  //   // String localDate = launch.dateLocal;
  //   // String preciseDate = launch.datePrecision.toString();
  //   // String utcDate = launch.dateUtc;
  //   // double staticFireDateUnix = launch.staticFireDateUnix;
  //   // String staticFireDateUtc = launch.staticFireDateUtc;
  //   // String launchpad = launch.launchpad;
  //   // String launchLibraryId = launch.launchLibraryId;
  //   // Object links = launch.links.toString();
  //   // String name = launch.name;
  //   // bool net = launch.net;
  //   // List<dynamic> payloads = launch.payloads.toList();
  //   // List<dynamic> ships = launch.ships.toList();
  //   // bool tbd = launch.tbd;
  //   // bool upcoming = launch.upcoming;
  //   // int window = launch.window;

  //   return LaunchCard(
  //       // borderOnForeground: false,
  //       // clipBehavior: Clip.antiAlias,
  //       color: Color.fromRGBO(33, 90, 175, 1),
  //       // elevation: 5.0,
  //       // margin: EdgeInsets.all(3.0),
  //       semanticContainer: false,
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
  //       child: Column(
  //         children: <Widget>[
  //           id != null
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.code,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Text(
  //                         'ID: $id',
  //                         style:
  //                             TextStyle(textBaseline: TextBaseline.ideographic),
  //                       ),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           rocket != null
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.flight_takeoff,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Text('Rocket: $rocket'),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           success != null
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.update,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Text('Success: $success'),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           flightNumber != null
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.airplanemode_active,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Text(flightNumber.toString()),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           details != null
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.details,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Expanded(
  //                         child: Text(
  //                           details.toString(),
  //                           overflow: TextOverflow.clip,
  //                           style: TextStyle(
  //                             color: Colors.black87,
  //                             fontSize: 13.0,
  //                             fontFamily: 'Roboto',
  //                           ),
  //                         ),
  //                       )
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           capsules.length != 0
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.phonelink_lock,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Expanded(
  //                         child: Text(
  //                           capsules.toString(),
  //                           overflow: TextOverflow.clip,
  //                           style: TextStyle(
  //                             color: Colors.black87,
  //                             fontSize: 13.0,
  //                             fontFamily: 'Roboto',
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           fairings != null
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.system_update_alt,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Expanded(
  //                         child: Text(
  //                           fairings.toString(),
  //                           overflow: TextOverflow.clip,
  //                           style: TextStyle(
  //                             color: Colors.black87,
  //                             fontSize: 13.0,
  //                             fontFamily: 'Roboto',
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           autoUpdate != null
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.update,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Expanded(
  //                         child: Text(
  //                           autoUpdate.toString(),
  //                           overflow: TextOverflow.clip,
  //                           style: TextStyle(
  //                             color: Colors.black87,
  //                             fontSize: 13.0,
  //                             fontFamily: 'Roboto',
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           cores != null
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.update,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Expanded(
  //                         child: Text(
  //                           cores.toString(),
  //                           overflow: TextOverflow.clip,
  //                           style: TextStyle(
  //                             color: Colors.black87,
  //                             fontSize: 13.0,
  //                             fontFamily: 'Roboto',
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           crew.length != 0
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.camera,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Text(crew.toString()),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           staticFireDateUtc != null
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(Icons.date_range),
  //                       Text(staticFireDateUtc.toString()),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           // staticFireDateUnix != 0
  //           //     ? Padding(
  //           //         padding: const EdgeInsets.all(8.0),
  //           //         child: Row(
  //           //           children: <Widget>[
  //           //             Icon(Icons.perm_data_setting),
  //           //             Text(staticFireDateUnix.toString()),
  //           //           ],
  //           //         ),
  //           //       )
  //           //     : Container(),
  //           name != null
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.update,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Text(name),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           launchLibraryId != null
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.pages,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Text(launchLibraryId.toString()),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           payloads != null
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.details,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Expanded(
  //                         child: Text(
  //                           payloads.toString(),
  //                           overflow: TextOverflow.clip,
  //                           style: TextStyle(
  //                             color: Colors.black87,
  //                             fontSize: 13.0,
  //                             fontFamily: 'Roboto',
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           net != null
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.phonelink_lock,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Text(net.toString()),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           tbd != null
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.date_range,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Text(tbd.toString()),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           upcoming != null
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.perm_data_setting,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Text(upcoming.toString()),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           window != null
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.update,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Text(window.toString()),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           localDate != null
  //               ? Row(
  //                   children: <Widget>[
  //                     Icon(
  //                       Icons.date_range,
  //                       color: Color.fromRGBO(120, 30, 89, 3),
  //                     ),
  //                     Text(localDate.toString()),
  //                   ],
  //                 )
  //               : Container(),
  //           preciseDate != null
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.perm_data_setting,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Text(preciseDate),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           // utcDate != null
  //           //     ? Padding(
  //           //         padding: const EdgeInsets.all(8.0),
  //           //         child: Row(
  //           //           children: <Widget>[
  //           //             Icon(Icons.update),
  //           //             Text(utcDate.toString()),
  //           //           ],
  //           //         ),
  //           //       )
  //           //     : Container(),
  //           launchpad.length != 0
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.pages,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Text(launchpad),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //           // links != null
  //           //     ? Padding(
  //           //         padding: const EdgeInsets.all(8.0),
  //           //         child: Row(
  //           //           children: <Widget>[
  //           //             Icon(
  //           //               Icons.details,
  //           //               color: Color.fromRGBO(120, 30, 89, 3),
  //           //             ),
  //           //             Expanded(
  //           //               child: Text(
  //           //                 links,
  //           //                 overflow: TextOverflow.fade,
  //           //               ),
  //           //             ),
  //           //           ],
  //           //         ),
  //           //       )
  //           //     : Container(),
  //           ships.length != 0
  //               ? Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.phonelink_lock,
  //                         color: Color.fromRGBO(120, 30, 89, 3),
  //                       ),
  //                       Expanded(
  //                         child: Text(
  //                           ships.toString(),
  //                           overflow: TextOverflow.clip,
  //                           style: TextStyle(
  //                             color: Colors.black87,
  //                             fontSize: 13.0,
  //                             fontFamily: 'Roboto',
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 )
  //               : Container(),
  //         ],
  //       ));

  // }
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
