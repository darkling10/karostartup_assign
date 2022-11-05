import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:karostartup_assign/utils/colors.dart';
import 'package:karostartup_assign/widgets/details_widgets/BodyLayout.dart';

import '../resources/products.dart';
import '../widgets/details_widgets/appBar.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: buildAppBar(context),
      body: BodyLayout(
        product: product,
      ),
    );
  }
}
