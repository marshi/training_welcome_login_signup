import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/login/background.dart';
import 'package:flutter_auth/top/component/rounded_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'rounded_text_form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: LoginBackground(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 16),
                ),
                SvgPicture.asset(
                  "assets/icons/login.svg",
                  width: size.width * 0.65,
                ),
                SizedBox(height: 20),
                RoundedTextForm(icon: Icons.person),
                SizedBox(height: 20),
                RoundedTextForm(
                  icon: Icons.lock,
                  suffixIcon: Icons.visibility,
                  obscure: true,
                ),
                SizedBox(height: 20),
                RoundedButton(
                  function: () {},
                  text: "LOGIN",
                  textColor: primaryLightColor,
                  backgroundColor: primaryColor,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Account?",
                      style: TextStyle(color: primaryColor),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        print("sign up");
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
