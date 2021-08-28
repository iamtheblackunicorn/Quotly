import 'variables.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: mainColor,
      body: Center(
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
    );
  }
}
