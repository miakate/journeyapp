import 'package:flutter/material.dart';
import 'package:journeyapp/screens/dashboard/components/appbar.dart';

import '../../../../constants.dart';

class PlacesScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PlacesScreen(),
    );
  }
}

class PlacesScreen extends StatefulWidget {
  @override
  _PlacesScreenState createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  final title = 'Places';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: styledAppbar(context, title: this.title),

    );
  }
}
