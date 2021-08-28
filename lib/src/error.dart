/// Quotly by Alexander Abraham
/// a.k.a. "The Black Unicorn".
/// Licensed under the MIT license.

import 'variables.dart';
import 'package:flutter/material.dart';

/// This class return a static widget
/// containing the error screen.
class Error extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            colors: <Color> [
              gradientOne,
              gradientTwo
            ]
          )
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            children: <Widget> [
              new SizedBox(
                height: pushDown
              ),
              new Icon(
                Icons.warning,
                color: mainColor,
                size: iconSize,
              ),
              new Text(
                errorText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize,
                  fontFamily: defaultFont
                ),
              )
            ]
          )
        )
      )
    );
  }
}
