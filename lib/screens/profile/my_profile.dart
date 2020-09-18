import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musiclyshop/screens/profile/components/body.dart';

import '../../constants.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: textColor,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}

