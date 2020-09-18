import 'dart:ui';

import 'package:flutter/cupertino.dart';

class TopPage extends StatelessWidget {
  const TopPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            width: size.width * 0.3,
            child: Image.asset("assets/images/main_top.png"),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            width: size.width * 0.3,
            child: Image.asset("assets/images/main_bottom.png"),
          )
        ],
      ),
    );
  }
}
