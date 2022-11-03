import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    centerTitle: false,
    title: Text('Dashboard'),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/notification.svg"),
        onPressed: () {},
      ),
    ],
  );
}