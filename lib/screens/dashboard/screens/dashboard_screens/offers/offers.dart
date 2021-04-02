import 'package:flutter/material.dart';
import 'package:journeyapp/screens/dashboard/components/appbar.dart';

import '../../../../constants.dart';


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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: styledAppbar(context, title: this.title),
    );
  }
}
