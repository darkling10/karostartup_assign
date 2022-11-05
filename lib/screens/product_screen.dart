import 'package:flutter/material.dart';
import 'package:karostartup_assign/widgets/product_widgets/BodyLayout.dart';

import '../utils/colors.dart';
import '../widgets/appBar.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: primaryColor,
      body: BodyLayout(),
    );
  }
}
