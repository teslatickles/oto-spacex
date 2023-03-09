// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Widget buildCardColumns() {
//   Column(
//             children: <Widget>[
//               name != null
//                   ? Padding(
//                       padding: const EdgeInsets.all(1.0),
//                       child: Row(
//                         children: <Widget>[
//                           Icon(
//                             FontAwesomeIcons.hatCowboySide,
//                             color: Color.fromRGBO(183, 61, 24, 5),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(left: 18.0),
//                             child: Text(
//                               name,
//                               textAlign: TextAlign.right,
//                               style: TextStyle(
//                                 color: Color.fromRGBO(127, 80, 57, 10),
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   : Container(),
//               Container(
//                 margin: EdgeInsets.symmetric(vertical: 2.0),
//                 height: 3.0,
//                 width: 100.0,
//                 color: Color.fromRGBO(56, 173, 169, 50.0),
//               ),
//               rocket != null
//                   ? Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         children: <Widget>[
//                           Icon(
//                             FontAwesomeIcons.rocket,
//                             color: Color.fromRGBO(74, 105, 189, 5),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(left: 10.0),
//                             child: Text(
//                               rocketNames[rocket],
//                               textAlign: TextAlign.right,
//                               style: TextStyle(
//                                 color: Color.fromRGBO(229, 80, 57, 1),
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     )
//                   : Container(),
//               staticFireDateUtc != null
//                   ? Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         children: <Widget>[
//                           Icon(
//                             FontAwesomeIcons.calendarAlt,
//                             color: Color.fromRGBO(74, 105, 189, 5),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(left: 10.0),
//                             child: Text(
//                               formatDate(staticFireDateUtc),
//                               textAlign: TextAlign.right,
//                               style: TextStyle(
//                                 color: Color.fromRGBO(229, 80, 57, 1),
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   : Container(),
//               // links != null
//               //     ? Padding(
//               //         padding: const EdgeInsets.all(8.0),
//               //         child: Row(
//               //           children: [
//               //             Icon(
//               //               FontAwesomeIcons.link,
//               //               color: Color.fromRGBO(229, 80, 57, 1),
//               //             ),
//               //             Padding(
//               //                 padding: EdgeInsets.only(left: 10.0),
//               //                 child: Text(links))
//               //           ],
//               //         ),
//               //       )
//               //     : Container(),
//               success != null
//                   ? Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         children: <Widget>[
//                           Icon(
//                             FontAwesomeIcons.handPeace,
//                             color: Color.fromRGBO(74, 105, 189, 5),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(left: 10.0),
//                             child: Text(
//                               '${success ? 'Successful' : 'Failure'}',
//                               textAlign: TextAlign.right,
//                               style: TextStyle(
//                                 color: Color.fromRGBO(229, 80, 57, 1),
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   : Container(),
//             ],
//           )  
// }
