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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: styledAppbar(context, title: this.title),
      body: Container(),
    );
  }
}
