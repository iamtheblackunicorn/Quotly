/// Quotly by Alexander Abraham
/// a.k.a. "The Black Unicorn".
/// Licensed under the MIT license.

import 'variables.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

/// This class return a static widget
/// containing the loading screen.
class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: mainColor,
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
              new LoadingBouncingGrid.square(
                size: iconSize,
                backgroundColor: accentColor,
              ),
              new Text(
                loadingText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: accentColor,
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
