import 'package:flutter/material.dart';

class ComprasButton extends StatelessWidget {
  String text;
  Function onPressed;
  bool showProgress;

  ComprasButton(this.text, {this.onPressed, this.showProgress = false});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      height: 46,
      child: RaisedButton(
        color: Colors.blue,
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
