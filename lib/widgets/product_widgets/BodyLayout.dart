import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:karostartup_assign/utils/colors.dart';
import 'package:karostartup_assign/widgets/product_widgets/CategoryList.dart';
import 'package:karostartup_assign/widgets/product_widgets/ProductCard.dart';

import '../../resources/products.dart';
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
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 70),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              ListView.builder(
                // here we use our demo procuts list
                itemCount: products.length,
                itemBuilder: (context, index) => ProductCard(
                  itemIndex: index,
                  product: products[index],
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Text(
                          "product: products[index]",
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
