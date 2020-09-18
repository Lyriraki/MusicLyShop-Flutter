import 'package:flutter/material.dart';
import 'package:musiclyshop/constants.dart';
import 'package:musiclyshop/models/Product.dart';
import 'package:musiclyshop/screens/details/components/product_title_with_image.dart';

import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'counter_with_fav_button.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: size.height * 0.36),
                padding: EdgeInsets.only(
                  top: size.height * 0.12,
                  left: defaultPadding,
                  right: defaultPadding,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    ColorAndSize(product: product),
                    SizedBox(height: defaultPadding / 2,),
                    Description(product: product),
                    SizedBox(height: defaultPadding / 2,),
                    CounterWithFavButton(),
                    AddToCart(product: product)
                  ],
                ),
              ),
              ProductTitleWithImage(product: product)
            ],
          )
        ],
      ),
    );
  }
}
