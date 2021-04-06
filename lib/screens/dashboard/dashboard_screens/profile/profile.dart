import 'package:flutter/material.dart';
import 'package:journeyapp/screens/dashboard/components/appbar.dart';

import '../../../../constants.dart';

class ProfileScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final title = 'Profile';
  double _width;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: styledAppbar(context, title: this.title),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // background image and bottom contents
          Column(
            children: <Widget>[
              Container(
                height: 300.0,
                width: _width,
                decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i1.wp.com/www.armgeo.am/wp-content/uploads/2016/08/big_ecc3ebf4a.jpg?resize=825%2C550&ssl=1"),
                        fit: BoxFit.cover)),
              ),
              Expanded(
                // child: Container(
                //   color: Colors.white,
                child: Container(
                  // padding: EdgeInsets.fromLTRB(100, 0, 10, 10),

                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 120,
                      ),
                      Text(
                        'Name',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "Robert Badia",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Phone Number',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "+1514652364",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Age',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "23",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                // ),
              )
            ],
          ),
          // Profile image
          Positioned(
            top: 200.0, // (background container size) - (circle height / 2)
            child: Container(
              height: 200.0,
              width: 200.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://miro.medium.com/max/785/0*Ggt-XwliwAO6QURi.jpg"),
                      fit: BoxFit.cover)),
            ),
          )
        ],
      ),
    );
  }
}
