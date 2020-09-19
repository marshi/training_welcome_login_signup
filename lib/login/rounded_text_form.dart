import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedTextForm extends StatelessWidget {
  const RoundedTextForm({
    Key key,
    this.icon,
    this.suffixIcon,
    this.obscure = false,
  }) : super(key: key);

  final IconData icon;
  final IconData suffixIcon;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: primaryLightColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          icon: Icon(icon),
          suffixIcon: Icon(suffixIcon),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
