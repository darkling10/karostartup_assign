import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:karostartup_assign/utils/colors.dart';


AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: backgroundColor,
    elevation: 0,
    leading: IconButton(
      padding: EdgeInsets.only(left: defaultPadding),
      icon: SvgPicture.asset("assets/icons/back.svg"),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    centerTitle: false,
    title: Text(
      'Back'.toUpperCase(),
      style: Theme
          .of(context)
          .textTheme
          .bodyText2,
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset('assets/icons/cart_with_item.svg'),
        onPressed: () {},
      ),
    ],
  );
}