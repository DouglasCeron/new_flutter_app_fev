import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:new_flutter_app_fev/login_controller.dart';

import 'assets_helper.dart';

class LoginPage extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 0.0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.dstATop),
                  image: AssetImage(AssetsHelper.loginBackgroundPath),
                )),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: Image.asset(AssetsHelper.logo,),
                ),
                textInputField('login'),
                textInputField('Senha', isObscureText: true),
                smallText(Alignment.centerRight, EdgeInsets.only(right: 30),
                    EdgeInsets.only(top: 20), 'Esqueceu a Senha ?'),
                primaryButton(() => {}, Colors.white, 'Login')
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget smallText(AlignmentGeometry alignment, EdgeInsetsGeometry padding,
      EdgeInsetsGeometry margin, String text) {
    return Container(
      alignment: alignment,
      padding: padding,
      margin: margin,
      child: Text(
        text,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
      ),
    );
  }

  Widget primaryButton(Function execute, Color buttonColor, String buttonText) {
    return Container(
      width: double.infinity,
      height: 48,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: RaisedButton(
        onPressed: execute,
        color: buttonColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  textInputField(String labelText, {bool isObscureText = false}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      margin: EdgeInsets.only(top: 20),
      child: TextField(
        obscureText: isObscureText,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(30),
            ),
            labelText: labelText,
            labelStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.w800)),
        cursorColor: Colors.black,
      ),
    );
  }
}
