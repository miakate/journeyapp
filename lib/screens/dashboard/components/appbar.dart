import 'package:flutter/material.dart';

Widget styledAppbar(context, {String title}) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(color: Colors.green),
    ),
    automaticallyImplyLeading: false,
    centerTitle: true,
    backgroundColor: Colors.white,
  );
}
