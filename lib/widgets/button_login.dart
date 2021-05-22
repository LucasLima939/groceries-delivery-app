import 'package:flutter/material.dart';
import 'package:teste/layout/layout_color.dart';

class LoginButton extends StatelessWidget {
  String text;
  Function onPressed;
  bool showProgress;

  LoginButton(this.text, {this.onPressed, this.showProgress = false});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      height: 46,
      child: RaisedButton(
        color: LayoutColor.primaryColor,
        child: showProgress
            ? Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
        onPressed: onPressed,
      ),
    );
  }
}
