import 'package:flutter/material.dart';
import 'package:karostartup_assign/resources/products.dart';
import 'package:karostartup_assign/utils/colors.dart';
import 'package:karostartup_assign/widgets/details_widgets/AddToCart.dart';
import 'package:karostartup_assign/widgets/details_widgets/ColorPanel.dart';
import 'package:karostartup_assign/widgets/details_widgets/ProductView.dart';

class BodyLayout extends StatelessWidget {
  final Product product;

  const BodyLayout({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it provide us total height and width
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small devices
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              decoration: const BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Hero(
                      tag: '${product.id}',
                      child: ProductView(
                        size: size,
                        image: product.image,
                      ),
                    ),
                  ),
                  ColorsPanel(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: defaultPadding / 2,
                    ),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    '\$${product.price}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: secondaryColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding / 2),
                    child: Text(
                      product.description,
                      style: TextStyle(color: textLightColor),
                    ),
                  ),
                  SizedBox(height: defaultPadding),
                ],
              ),
            ),
            AddToCart(),
          ],
        ),
      ),
    );
  }
}
