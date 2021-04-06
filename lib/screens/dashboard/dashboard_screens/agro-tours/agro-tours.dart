import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:journeyapp/screens/dashboard/components/appbar.dart';

class TopScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AgroToursScreen(),
    );
  }
}

class AgroToursScreen extends StatefulWidget {
  @override
  _AgroToursScreenState createState() => _AgroToursScreenState();
}

class _AgroToursScreenState extends State<AgroToursScreen> {
  final title = 'Agro Tours';
  String name = "";
  double _width;
  double _height;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: styledAppbar(context, title: this.title),
      body: StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection("agroTour").snapshots(),
        builder: (context, snapshot) {
          return (snapshot.connectionState == ConnectionState.waiting)
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot data = snapshot.data.docs[index];
                    return Card(
                      child: Column(
                        children: <Widget>[
                          Image.network(
                            data['photoUrl'],
                            width: _width,
                            height: 200,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            data['title'],
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'About Family',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                  height: 10,
                                ),
                                Text(
                                  data['description'],
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(children: <Widget>[
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Address',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: _width / 7.4,
                            ),
                            Text(
                              data['address'],
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 17,
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 10,
                          ),
                          Row(children: <Widget>[
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Price Per Day',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              data['price_per_day'],
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 15,
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 10,
                          ),
                          Row(children: <Widget>[
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Phone Number',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              data['phoneNumber'],
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 15,
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
