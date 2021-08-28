/// Quotly by Alexander Abraham
/// a.k.a. "The Black Unicorn".
/// Licensed under the MIT license.

import 'variables.dart';
import 'package:flutter/material.dart';

/// This class returns the easter egg
/// widget containing app credits.
class Credits extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: mainColor,
        ),
        elevation: elevation,
        backgroundColor: accentColor,
        title: new Text(
          info,
          style: new TextStyle(
            color: mainColor,
            fontSize: fontSize,
            fontFamily: defaultFont
          )
        )
      ),
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
        child: new SingleChildScrollView(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                new Padding(
                  padding: EdgeInsets.all(stdPadding),
                  child:new SizedBox(
                    width: imageSize,
                    height: imageSize,
                    child: new Image(
                      image: AssetImage(
                        logoPath
                      )
                    )
                  )
                ),
                new ListView.builder(
                  shrinkWrap: isTrue,
                  itemCount: creditsDict.length,
                  itemBuilder: (context,index) {
                    String itemName = creditsDict.keys.elementAt(index);
                    String item = creditsDict[itemName];
                    return new Padding(
                      padding: EdgeInsets.all(stdPadding),
                      child: new SizedBox(
                        height: fabSize,
                        width: MediaQuery.of(context).size.width,
                        child: new Card(
                          color: accentColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              stdRounding
                            )
                          ),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget> [
                              new Padding(
                                padding: EdgeInsets.all(stdPadding),
                                child: new Text(
                                  itemName,
                                  style: new TextStyle(
                                    color: mainColor,
                                    fontSize: fontSize,
                                    fontFamily: defaultFont
                                  )
                                )
                              ),
                              new Padding(
                                padding: EdgeInsets.all(stdPadding),
                                child: new Text(
                                  item,
                                  style: new TextStyle(
                                    color: mainColor,
                                    fontSize: fontSize,
                                    fontFamily: defaultFont
                                  )
                                )
                              )
                            ]
                          )
                        )
                      )
                    );
                  }
                )
              ]
            )
          )
        )
      )
    );
  }
}
