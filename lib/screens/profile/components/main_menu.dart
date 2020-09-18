import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: MainMenuIcon(Icons.camera),
            title: Text('Memory'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          ListTile(
            leading: MainMenuIcon(Icons.compare_arrows),
            title: Text('Transaction'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          ListTile(
            leading: MainMenuIcon(Icons.timeline),
            title: Text('Statistic'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          ListTile(
            leading: MainMenuIcon(Icons.favorite),
            title: Text('Favourites'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          ListTile(
            leading: MainMenuIcon(Icons.card_giftcard),
            title: Text('Gifts'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          ListTile(
            leading: MainMenuIcon(Icons.group),
            title: Text('Friends'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          ListTile(
            leading: MainMenuIcon(Icons.beenhere),
            title: Text('Challenges'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class MainMenuIcon extends StatelessWidget {
  final IconData icon;
  const MainMenuIcon(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.all(Radius.circular(5))
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}