import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:oto/models/Launch.dart';

class LaunchCard extends StatefulWidget {
  final dynamic item;
  LaunchCard(key, this.item) : super(key: key);

  @override
  _LaunchCardState createState() => _LaunchCardState();
}

class _LaunchCardState extends State<LaunchCard> {
  String itemAsString;

  @override
  Widget build(BuildContext context) {
    return new Container(
      // height: 120.0,
      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      child: Stack(
        children: <Widget>[
          launchContent(widget.item),
          launchThumbnail(),
        ],
      ),
    );
  }

  Widget launchThumbnail() {
    return Container(
      height: 120.0,
      margin: new EdgeInsets.symmetric(vertical: 55.0),
      alignment: FractionalOffset.centerLeft,
      child: Image.asset("lib/images/spacef9.png"),
    );
  }

  Widget launchContent(dynamic item) {
    itemAsString = json.encode(item);

    Launch launch = item as Launch;
    String id = launch.id;
    Object fairings = launch.fairings.toString();
    bool autoUpdate = launch.autoUpdate;
    String rocket = launch.rocket;
    bool success = launch.success;
    String details = launch.details;
    List<dynamic> capsules = launch.capsules;
    List<dynamic> cores = launch.cores.toList();
    List<dynamic> crew = launch.crew.toList();
    int flightNumber = launch.flightNumber;
    String localDate = launch.dateLocal;
    String preciseDate = launch.datePrecision.toString();
    String utcDate = launch.dateUtc;
    double staticFireDateUnix = launch.staticFireDateUnix;
    String staticFireDateUtc = launch.staticFireDateUtc;
    String launchpad = launch.launchpad;
    String launchLibraryId = launch.launchLibraryId;
    Object links = launch.links.toString();
    String name = launch.name;
    bool net = launch.net;
    List<dynamic> payloads = launch.payloads.toList();
    List<dynamic> ships = launch.ships.toList();
    bool tbd = launch.tbd;
    bool upcoming = launch.upcoming;
    int window = launch.window;

    return Container(
      height: 220.0,
      margin: EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(100, 125, 76, 80.0),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: Offset(0.0, 17.0)),
        ],
      ),
      child: Column(
        children: <Widget>[
          //   id != null
          //       ? Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Row(
          //             children: <Widget>[
          //               Icon(
          //                 Icons.code,
          //                 color: Color.fromRGBO(120, 30, 89, 3),
          //               ),
          //               Text(
          //                 'ID: $id',
          //                 style:
          //                     TextStyle(textBaseline: TextBaseline.ideographic),
          //               ),
          //             ],
          //           ),
          //         )
          //       : Container(),
          //   rocket != null
          //       ? Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Row(
          //             children: <Widget>[
          //               Icon(
          //                 Icons.flight_takeoff,
          //                 color: Color.fromRGBO(120, 30, 89, 3),
          //               ),
          //               Text('Rocket: $rocket'),
          //             ],
          //           ),
          //         )
          //       : Container(),
          //   success != null
          //       ? Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Row(
          //             children: <Widget>[
          //               Icon(
          //                 Icons.update,
          //                 color: Color.fromRGBO(120, 30, 89, 3),
          //               ),
          //               Text('Success: $success'),
          //             ],
          //           ),
          //         )
          //       : Container(),
          //   flightNumber != null
          //       ? Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Row(
          //             children: <Widget>[
          //               Icon(
          //                 Icons.airplanemode_active,
          //                 color: Color.fromRGBO(120, 30, 89, 3),
          //               ),
          //               Text(flightNumber.toString()),
          //             ],
          //           ),
          //         )
          //       : Container(),
          // details != null
          //     ? Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           children: <Widget>[
          //             Icon(
          //               Icons.details,
          //               color: Color.fromRGBO(120, 30, 89, 3),
          //             ),
          //             Expanded(
          //               child: Text(
          //                 details.toString(),
          //                 overflow: TextOverflow.clip,
          //                 style: TextStyle(
          //                   color: Colors.black87,
          //                   fontSize: 13.0,
          //                   fontFamily: 'Roboto',
          //                 ),
          //               ),
          //             )
          //           ],
          //         ),
          //       )
          //     : Container(),
          // capsules.length != 0
          //     ? Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           children: <Widget>[
          //             Icon(
          //               Icons.phonelink_lock,
          //               color: Color.fromRGBO(120, 30, 89, 3),
          //             ),
          //             Expanded(
          //               child: Text(
          //                 capsules.toString(),
          //                 overflow: TextOverflow.clip,
          //                 style: TextStyle(
          //                   color: Colors.black87,
          //                   fontSize: 13.0,
          //                   fontFamily: 'Roboto',
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       )
          //     : Container(),
          // fairings != null
          //     ? Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           children: <Widget>[
          //             Icon(
          //               Icons.system_update_alt,
          //               color: Color.fromRGBO(120, 30, 89, 3),
          //             ),
          //             Expanded(
          //               child: Text(
          //                 fairings.toString(),
          //                 overflow: TextOverflow.clip,
          //                 style: TextStyle(
          //                   color: Colors.black87,
          //                   fontSize: 13.0,
          //                   fontFamily: 'Roboto',
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       )
          //     : Container(),
          // autoUpdate != null
          //     ? Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           children: <Widget>[
          //             Icon(
          //               Icons.update,
          //               color: Color.fromRGBO(120, 30, 89, 3),
          //             ),
          //             Expanded(
          //               child: Text(
          //                 autoUpdate.toString(),
          //                 overflow: TextOverflow.clip,
          //                 style: TextStyle(
          //                   color: Colors.black87,
          //                   fontSize: 13.0,
          //                   fontFamily: 'Roboto',
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       )
          //     : Container(),
          // cores != null
          //     ? Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           children: <Widget>[
          //             Icon(
          //               Icons.update,
          //               color: Color.fromRGBO(120, 30, 89, 3),
          //             ),
          //             Expanded(
          //               child: Text(
          //                 cores.toString(),
          //                 overflow: TextOverflow.clip,
          //                 style: TextStyle(
          //                   color: Colors.black87,
          //                   fontSize: 13.0,
          //                   fontFamily: 'Roboto',
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       )
          //     : Container(),
          // crew.length != 0
          //     ? Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           children: <Widget>[
          //             Icon(
          //               Icons.camera,
          //               color: Color.fromRGBO(120, 30, 89, 3),
          //             ),
          //             Text(crew.toString()),
          //           ],
          //         ),
          //       )
          //     : Container(),
          // staticFireDateUtc != null
          //     ? Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           children: <Widget>[
          //             Icon(Icons.date_range),
          //             Text(staticFireDateUtc.toString()),
          //           ],
          //         ),
          //       )
          //     : Container(),
          // // staticFireDateUnix != 0
          // //     ? Padding(
          // //         padding: const EdgeInsets.all(8.0),
          // //         child: Row(
          // //           children: <Widget>[
          // //             Icon(Icons.perm_data_setting),
          // //             Text(staticFireDateUnix.toString()),
          // //           ],
          // //         ),
          // //       )
          // //     : Container(),
          // name != null
          //     ? Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           children: <Widget>[
          //             Icon(
          //               Icons.update,
          //               color: Color.fromRGBO(120, 30, 89, 3),
          //             ),
          //             Text(name),
          //           ],
          //         ),
          //       )
          //     : Container(),
          // launchLibraryId != null
          //     ? Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           children: <Widget>[
          //             Icon(
          //               Icons.pages,
          //               color: Color.fromRGBO(120, 30, 89, 3),
          //             ),
          //             Text(launchLibraryId.toString()),
          //           ],
          //         ),
          //       )
          //     : Container(),
          // payloads != null
          //     ? Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           children: <Widget>[
          //             Icon(
          //               Icons.details,
          //               color: Color.fromRGBO(120, 30, 89, 3),
          //             ),
          //             Expanded(
          //               child: Text(
          //                 payloads.toString(),
          //                 overflow: TextOverflow.clip,
          //                 style: TextStyle(
          //                   color: Colors.black87,
          //                   fontSize: 13.0,
          //                   fontFamily: 'Roboto',
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       )
          //     : Container(),
          // net != null
          //     ? Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           children: <Widget>[
          //             Icon(
          //               Icons.phonelink_lock,
          //               color: Color.fromRGBO(120, 30, 89, 3),
          //             ),
          //             Text(net.toString()),
          //           ],
          //         ),
          //       )
          //     : Container(),
          // tbd != null
          //     ? Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           children: <Widget>[
          //             Icon(
          //               Icons.date_range,
          //               color: Color.fromRGBO(120, 30, 89, 3),
          //             ),
          //             Text(tbd.toString()),
          //           ],
          //         ),
          //       )
          //     : Container(),
          // upcoming != null
          //     ? Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           children: <Widget>[
          //             Icon(
          //               Icons.perm_data_setting,
          //               color: Color.fromRGBO(120, 30, 89, 3),
          //             ),
          //             Text(upcoming.toString()),
          //           ],
          //         ),
          //       )
          //     : Container(),
          // window != null
          //     ? Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           children: <Widget>[
          //             Icon(
          //               Icons.update,
          //               color: Color.fromRGBO(120, 30, 89, 3),
          //             ),
          //             Text(window.toString()),
          //           ],
          //         ),
          //       )
          //     : Container(),
          // localDate != null
          //     ? Row(
          //         children: <Widget>[
          //           Icon(
          //             Icons.date_range,
          //             color: Color.fromRGBO(120, 30, 89, 3),
          //           ),
          //           Text(localDate.toString()),
          //         ],
          //       )
          //     : Container(),
          // preciseDate != null
          //     ? Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           children: <Widget>[
          //             Icon(
          //               Icons.perm_data_setting,
          //               color: Color.fromRGBO(120, 30, 89, 3),
          //             ),
          //             Text(preciseDate),
          //           ],
          //         ),
          //       )
          //     : Container(),
          // // utcDate != null
          // //     ? Padding(
          // //         padding: const EdgeInsets.all(8.0),
          // //         child: Row(
          // //           children: <Widget>[
          // //             Icon(Icons.update),
          // //             Text(utcDate.toString()),
          // //           ],
          // //         ),
          // //       )
          // //     : Container(),
          // launchpad.length != 0
          //     ? Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           children: <Widget>[
          //             Icon(
          //               Icons.pages,
          //               color: Color.fromRGBO(120, 30, 89, 3),
          //             ),
          //             Text(launchpad),
          //           ],
          //         ),
          //       )
          //     : Container(),
          // // links != null
          // //     ? Padding(
          // //         padding: const EdgeInsets.all(8.0),
          // //         child: Row(
          // //           children: <Widget>[
          // //             Icon(
          // //               Icons.details,
          // //               color: Color.fromRGBO(120, 30, 89, 3),
          // //             ),
          // //             Expanded(
          // //               child: Text(
          // //                 links,
          // //                 overflow: TextOverflow.fade,
          // //               ),
          // //             ),
          // //           ],
          // //         ),
          // //       )
          // //     : Container(),
          ships.length != 0
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phonelink_lock,
                        color: Color.fromRGBO(120, 30, 89, 3),
                      ),
                      Expanded(
                        child: Text(
                          ships.toString(),
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13.0,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
