import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:karostartup_assign/utils/colors.dart';
import 'package:karostartup_assign/widgets/product_widgets/CategoryList.dart';

import 'SearchBox.dart';

class BodyLayout extends StatefulWidget {
  const BodyLayout({Key? key}) : super(key: key);

  @override
  State<BodyLayout> createState() => _BodyLayoutState();
}

class _BodyLayoutState extends State<BodyLayout> {
  TextEditingController _searchInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBox(
          inputController: _searchInput,
        ),
        CategoryList(),
      ],
    );
  }
}
