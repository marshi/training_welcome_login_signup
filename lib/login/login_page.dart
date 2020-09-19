import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/login/background.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'rounded_text_form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: LoginBackground(
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
                width: size.width * 0.8,
              ),
              SizedBox(height: 20),
              RoundedTextForm(icon: Icons.person),
              SizedBox(height: 20),
              RoundedTextForm(
                icon: Icons.lock,
                suffixIcon: Icons.visibility,
                obscure: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
