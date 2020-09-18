import 'package:flutter/material.dart';
import 'package:musiclyshop/constants.dart';

class Brands extends StatefulWidget{
  @override
  _BrandsState createState() => _BrandsState();
}

class _BrandsState extends State<Brands>{
  List<String> brands = ["All", "G&L", "Godin", "Spector", "Yamaha"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: brands.length,
            itemBuilder: (context, index) => buildBrands(index)),
      ),
    );
  }

  Widget buildBrands(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              brands[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? textColor : textLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: defaultPadding/4),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}