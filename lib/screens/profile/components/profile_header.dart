import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromRGBO(102, 179, 255, 1),Color.fromRGBO(77, 136, 255, 1)],
          stops: [0.4, 0.6],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
              padding: EdgeInsets.only(right: 10),
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.notifications_none,
                color: Colors.white,
                size: 30,
              )),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Profile',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 70,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54, blurRadius: 10, spreadRadius: 1)
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lucky Arif Rahman Hakim',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'Desa Tambakselo',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ProfileHeaderColumn('Followers', '6.4k'),
                VerticalDivider(),
                ProfileHeaderColumn('Following', '5.7k'),
                VerticalDivider(),
                ProfileHeaderColumn('Status', 'Silver Member'),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

class ProfileHeaderColumn extends StatelessWidget {
  final String title;
  final String data;

  const ProfileHeaderColumn(this.title, this.data);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        Text(
          data,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ],
    );
  }
}


class VerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 1,
      color: Colors.white30,
      margin: EdgeInsets.only(left: 10, right: 10),
    );
  }
}