import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          icon: Icon(Icons.arrow_back), color: Colors.grey, onPressed: () {}),
      actions: [
        IconButton(
            icon: Icon(Icons.search), color: Colors.grey, onPressed: () {}),
        IconButton(
            icon: Icon(Icons.card_travel),
            color: Colors.grey,
            onPressed: () {}),
        SizedBox(
          width: kDefaultPadding / 4,
        )
      ],
    );
  }
}
