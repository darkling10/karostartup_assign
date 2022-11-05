import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/colors.dart';

class SearchBox extends StatelessWidget {
  final TextEditingController inputController;

  const SearchBox({
    Key? key,
    required this.inputController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 4,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        controller: inputController,
        decoration: InputDecoration(
          icon: SvgPicture.asset('assets/icons/search.svg'),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
