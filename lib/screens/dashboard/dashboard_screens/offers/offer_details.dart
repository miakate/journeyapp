import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journeyapp/screens/dashboard/components/appbar.dart';

// class OffersDetailsScreenPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: OffersDetailsScreen(),
//     );
//   }
// }
//
// class OffersDetailsScreen extends StatefulWidget {
//   OffersDetailsScreen({data});
//
//   @override
//   _OffersDetailsState createState() => _OffersDetailsState();
// }
//
// class _OffersDetailsState extends State<OffersDetailsScreen> {
//   final title = 'Offers Details';
//   double _width;
//   double _height;
//
//   @override
//   Widget build(BuildContext context) {
//     _width = MediaQuery.of(context).size.width;
//     _height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: styledAppbar(context, title: this.title),
//       body: Card(
//         child: Column(children: <Widget>[
//           Image.network(
//             widget.model['photoUrl'],
//             width: _width,
//             height: 200,
//             fit: BoxFit.fill,
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             data['title'],
//             style: TextStyle(
//               color: Colors.orange,
//               fontWeight: FontWeight.w700,
//               fontSize: 22,
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }

Widget OffersDetailsScreen({data, width}) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green,
    ),
    body: Container(
      padding: EdgeInsets.fromLTRB(10, 30, 10, 25),
      child: Card(
        child: Column(
          children: <Widget>[
            Image.network(
              data['photoUrl'],
              width: width,
              height: 200,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              data['title'],
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Column(
                children: <Widget>[
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
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
