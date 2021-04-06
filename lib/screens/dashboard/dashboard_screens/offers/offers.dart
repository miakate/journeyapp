import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:journeyapp/screens/dashboard/components/appbar.dart';

import 'offer_details.dart';

class OffersScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OffersScreen(),
    );
  }
}

class OffersScreen extends StatefulWidget {
  @override
  _OffersScreenState createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  final title = 'Offers';
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
        stream: Firestore.instance.collection("offers").snapshots(),
        builder: (context, snapshot) {
          return (snapshot.connectionState == ConnectionState.waiting)
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot data = snapshot.data.docs[index];
                    return Card(
                      child: InkWell(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OffersDetailsScreen(
                                  data: data, width: _width),
                            ),
                          )
                        },
                        child: Row(
                          children: <Widget>[
                            Image.network(
                              data['photoUrl'],
                              width: 150,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              data['title'],
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
