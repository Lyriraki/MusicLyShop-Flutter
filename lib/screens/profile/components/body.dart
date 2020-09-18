import 'package:flutter/material.dart';
import 'package:musiclyshop/screens/profile/components/profile_header.dart';
import 'package:musiclyshop/screens/profile/components/quict_action_menu.dart';

import 'main_menu.dart';

class Body extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ProfileHeader(),
              QuickActionMenu(),
              MainMenu(),
            ],
          ),
        ),
    );
  }
}

