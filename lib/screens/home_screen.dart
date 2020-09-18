import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musiclyshop/constants.dart';
import 'package:musiclyshop/screens/home/components/body.dart';

import 'home/components/drawer_view.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerView(),
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Builder(
        builder: (context) => IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
              color: textColor
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: textColor
          ),
          onPressed: () {},
        ),
        SizedBox(width: defaultPadding / 2)
      ],
    );
  }
}