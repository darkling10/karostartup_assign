import 'package:flutter/material.dart';
import 'package:karostartup_assign/utils/colors.dart';
import 'package:karostartup_assign/widgets/details_widgets/ColorPoint.dart';

class ColorsPanel extends StatelessWidget {
  const ColorsPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: defaultPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          ColorPoints(
            fillColor: Color(0xFF80989A),
            isSelected: true,
          ),
          ColorPoints(
            fillColor: Color(0xFFFF5200),
          ),
          ColorPoints(
            fillColor: primaryColor,
          ),
        ],
      ),
    );
  }
}
