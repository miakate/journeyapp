import 'package:flutter/material.dart';
import 'package:journeyapp/screens/dashboard/components/appbar.dart';

import '../../../../constants.dart';
import '../../../../constants.dart';
import '../../../../constants.dart';
import '../../../../constants.dart';
import '../../../../constants.dart';
import '../../../../constants.dart';

class TopScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TopScreen(),
    );
  }
}

class TopScreen extends StatefulWidget {
  @override
  _TopScreenState createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  final title = 'Top';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: styledAppbar(context, title: this.title),
      // body: Column(
      //   children: <Widget>[
      //     SizedBox(height: 30),
      //     Card(
      //       elevation: 2,
      //       child: Column(
      //         mainAxisSize: MainAxisSize.min,
      //         children: <Widget>[
      //           ListTile(
      //             leading: Image.asset(
      //               'assets/images/journal/dilijan/dilijan1.jpg',
      //               fit: BoxFit.fill,
      //               width: 200.0,
      //               // height: 300.0,
      //             ),
      //             title: Text('Dilijan'),
      //             subtitle: Text('Music by Julie Gable.'),
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.end,
      //             children: <Widget>[
      //               TextButton(
      //                 child: Text('BUY TICKETS'),
      //                 onPressed: () {},
      //               ),
      //               SizedBox(width: 8),
      //               TextButton(
      //                 child: Text('more'),
      //                 onPressed: () {},
      //               ),
      //               SizedBox(width: 8),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //     SizedBox(height: 30),
      //     Card(
      //       elevation: 2,
      //       child: Column(
      //         mainAxisSize: MainAxisSize.min,
      //         children: <Widget>[
      //           ListTile(
      //             leading: Icon(Icons.album),
      //             title: Text('The Enchanted Nightingale'),
      //             subtitle:
      //                 Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.end,
      //             children: <Widget>[
      //               TextButton(
      //                 child: Text('BUY TICKETS'),
      //                 onPressed: () {},
      //               ),
      //               SizedBox(width: 8),
      //               TextButton(
      //                 child: Text('more'),
      //                 onPressed: () {},
      //               ),
      //               SizedBox(width: 8),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //     SizedBox(height: 30),
      //     Card(
      //       elevation: 2,
      //       child: Column(
      //         mainAxisSize: MainAxisSize.min,
      //         children: <Widget>[
      //           ListTile(
      //             leading: Icon(
      //               Icons.album,
      //             ),
      //             title: Text('The Enchanted Nightingale'),
      //             subtitle:
      //                 Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.end,
      //             children: <Widget>[
      //               TextButton(
      //                 child: Text('BUY TICKETS'),
      //                 onPressed: () {},
      //               ),
      //               SizedBox(width: 8),
      //               TextButton(
      //                 child: Text('more'),
      //                 onPressed: () {},
      //               ),
      //               SizedBox(width: 8),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //     SizedBox(height: 30),
      //   ],
      // ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              child: InkWell(
                onTap: () => print("ciao"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset(
                        'assets/images/journal/dilijan/dilijan1.jpg',
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      title: Text(
                        'Dilijan',
                        style: TextStyle(
                          fontSize: 20,
                          color: primaryBlack39,
                        ),
                      ),
                      subtitle: Text(
                        "Dilijan (Armenian: Դիլիջան) is a spa town and urban municipal community in the Tavush Province of Armenia.",
                        style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            color: primaryGreen06),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontSize: 15,
                                fontStyle: FontStyle.italic,
                                color: primaryGreen06),
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              child: InkWell(
                onTap: () => print("ciao"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset(
                        'assets/images/journal/lastiver/lastiver2.jpg',
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      title: Text(
                        'Lastiver',
                        style: TextStyle(
                          fontSize: 20,
                          color: primaryBlack39,
                        ),
                      ),
                      subtitle: Text(
                        'One of the tributaries of this river, Khachahpyur,'
                        ' leads to the beautiful corners of Ijevan, to the area of Lastiver',
                        style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            color: primaryGreen06),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontSize: 15,
                                fontStyle: FontStyle.italic,
                                color: primaryGreen06),
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              child: InkWell(
                onTap: () => print("ciao"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset(
                        'assets/images/journal/sevan/sevan3.jpeg',
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      title: Text(
                        'Sevan',
                        style: TextStyle(
                          fontSize: 20,
                          color: primaryBlack39,
                        ),
                      ),
                      subtitle: Text(
                        'Lake Sevan is the largest body of water in both Armenia'
                        ' and the Caucasus region. It is one of the largest freshwater high-altitude (alpine) lakes in Eurasia.',
                        style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            color: primaryGreen06),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontSize: 15,
                                fontStyle: FontStyle.italic,
                                color: primaryGreen06),
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
