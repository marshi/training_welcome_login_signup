import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    @required this.text,
    @required this.textColor,
    @required this.backgroundColor,
  }) : super(key: key);

  final String text;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: 60,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: FlatButton(
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
          color: backgroundColor,
          textColor: textColor,
        ),
      ),
    );
  }
}
