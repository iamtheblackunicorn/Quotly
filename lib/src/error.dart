import 'variables.dart';
import 'package:flutter/material.dart';

class Error extends StatelessWidget {
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
            new Icon(
              Icons.warning,
              color: accentColor,
              size: iconSize,
            ),
            new Text(
              errorText,
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
