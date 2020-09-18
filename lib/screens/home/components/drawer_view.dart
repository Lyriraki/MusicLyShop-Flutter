import 'package:flutter/material.dart';
import 'package:musiclyshop/constants.dart';
import 'package:musiclyshop/screens/profile/my_profile.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: Container(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 45),
                child: ContentDrawer(),
              ),
              FooterDrawer(),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.brightness_3),
            onPressed: () {},
          ),
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.close),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),
    );
  }
}

class ContentDrawer extends StatelessWidget {
  const ContentDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    image: new ExactAssetImage("assets/images/profile.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: defaultPadding),
                child: Text(
                  "Lucky Arif Rahman Hakim",
                  style: TextStyle(
                      fontSize: 20,
                      color: textColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "Luckyarif21@gmail.com",
                  style: TextStyle(
                    fontSize: 15,
                    color: textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 1.0,
            width: 130.0,
            color: textColor,
          ),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text(
            "Profile",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyProfile()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text(
            "Wish List",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.compare_arrows),
          title: Text(
            "Transaction",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            "Settings",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.arrow_back),
          title: Text(
            "Logout",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {},
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 1.0,
            width: 130.0,
            color: textColor,
          ),
        ),
        ListTile(
          title: Text(
            "Help Center",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
