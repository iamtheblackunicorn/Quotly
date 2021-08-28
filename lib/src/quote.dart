/// Quotly by Alexander Abraham
/// a.k.a. "The Black Unicorn".
/// Licensed under the MIT license.

import 'data.dart';
import 'error.dart';
import 'loading.dart';
import 'variables.dart';
import 'package:flutter/material.dart';

/// This widget handles the
/// Statefulness of the [HOME]
/// widget.
class Quote extends StatefulWidget {
  final APIHandler apiHandler;
  Quote({
    Key key,
    @required this.apiHandler
  }) : super(key: key);
  @override
  QuoteState createState() => QuoteState();
}

/// This widget returns the actual
/// widget tree of the [HOME] widget.
class QuoteState extends State<Quote> {
  Future<Map<String,dynamic>> quoteMap;
  int index;
  @override
  void initState(){
    super.initState();
    index = initIndex;
    quoteMap = widget.apiHandler.readData();
  }
  @override
  Widget build(BuildContext context){
    return FutureBuilder<Map<String, dynamic>>(
      future: quoteMap,
      builder: (
        BuildContext context,
        AsyncSnapshot<Map<String, dynamic>> snapshot
      ) {
        if (snapshot.connectionState == ConnectionState.waiting){
          return Loading();
        }
        else {
          if (snapshot.hasError) {
            return Error();
          }
          else {
            Map<String, dynamic> quoteList = snapshot.data;
            String number = quoteList.keys.elementAt(index);
            String quote = quoteList[number][0];
            int quoteListLength = quoteList.length - 1;
            Color gradientOne = Color(int.parse(prefix+quoteList[number][1]));
            Color gradientTwo = Color(int.parse(prefix+quoteList[number][2]));
            return Scaffold(
              floatingActionButton: new Padding(
                padding: EdgeInsets.all(stdPadding),
                child: new Container(
                  height: fabSize,
                  width: fabSize,
                  child: new FittedBox(
                    child: new Padding(
                      padding: EdgeInsets.all(stdPadding),
                      child: new FloatingActionButton(
                        backgroundColor: accentColor,
                        foregroundColor: mainColor,
                        child: Icon(
                          Icons.sync_sharp,
                          color: mainColor,
                          size: fontSize,
                        ),
                        onPressed: () {
                          setState((){
                            if (index  == quoteListLength){
                              index = initIndex;
                            }
                            else {
                              index = index + 1;
                            }
                          });
                        },
                      )
                    )
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
                child: new Center(
                  child: new Column(
                    children: <Widget> [
                      new SizedBox(
                        height: specialPushDown
                      ),
                      new Padding(
                        padding: EdgeInsets.all(stdPadding),
                        child: new Text(
                          '$quote',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                            fontSize:  fontSize,
                            fontFamily: defaultFont,
                            color: mainColor
                          )
                        )
                      )
                    ]
                  )
                )
              )
            );
          }
        }
      }
    );
  }
}
