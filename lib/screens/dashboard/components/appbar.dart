import 'package:flutter/material.dart';

Widget styledAppbar(context, {String title}) {
  return AppBar(
    title: Text(title),
    automaticallyImplyLeading: false,
    centerTitle: true,
    backgroundColor: Colors.white,
  );
}
