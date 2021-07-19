import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    'cat 1',
    'cat 2',
    'cat 3',
    'cat 4',
    'cat 5',
    'cat 6',
    'cat 7',
    'cat 8',
    'cat 9'
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return buildCategory(index);
          },
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index ? kTextColor : kTextLightColor),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPadding / 4),
              color: selectedIndex == index ? Colors.black : kTextLightColor,
              height: 2,
              width: 30,
            )
          ])),
    );
  }
}
