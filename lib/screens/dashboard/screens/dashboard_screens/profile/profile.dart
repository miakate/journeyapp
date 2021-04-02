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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: styledAppbar(context, title: this.title),
      body: Container(),
    );
  }
}
