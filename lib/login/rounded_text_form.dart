import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedTextForm extends StatelessWidget {
  const RoundedTextForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: pimaryLightColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.person),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
