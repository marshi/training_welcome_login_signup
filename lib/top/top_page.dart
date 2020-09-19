import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/login/login_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import 'component/background.dart';
import 'component/rounded_button.dart';

class TopPage extends StatelessWidget {
  const TopPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Background(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WELCOME TO ED",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: 40),
            RoundedButton(
              function: () {
                print("aiueo");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }),
                );
              },
              text: "LOGIN",
              textColor: Colors.white,
              backgroundColor: Colors.deepPurple,
            ),
            SizedBox(height: 20),
            RoundedButton(
              function: () {
                print("signup");
              },
              text: "SIGN UP",
              textColor: Colors.black,
              backgroundColor: pimaryLightColor,
            ),
          ],
        ),
      ),
    );
  }
}
