import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:loading_animations/loading_animations.dart';

void main(){
  runApp(
    new MaterialApp(
      home: Quote(apiHandler: APIHandler()),
      debugShowCheckedModeBanner: false
    )
  );
}

String quotes = 'https://blckunicorn.art/assets/quotly/quotes.json';
Dio dio = new Dio();

class Error extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Column(
          children: <Widget> [
            new SizedBox(
              height: 250
            ),
            new Icon(
              Icons.warning,
              color: Color(0xFF000000),
              size: 150,
            ),
            new Text(
              'Error!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 34,
                fontFamily: 'PSB'
              ),
            )
          ]
        )
      )
    );
  }
}

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Column(
          children: <Widget> [
            new SizedBox(
              height: 250
            ),
            new LoadingBouncingGrid.square(
              size: 150,
              backgroundColor: Color(0xFF000000),
            )
          ]
        )
      )
    );
  }
}

class APIHandler {
  Future<Map<String, dynamic>> get responseData async {
    try {
      Response response = await dio.get(
        quotes,
        options: Options(
          responseType: ResponseType.json,
          followRedirects: true,
          validateStatus: (status) { return status < 500; }
        ),
      );
      return response.data;
    } catch (e) {
      Response response = await dio.get(
        quotes,
        options: Options(
          responseType: ResponseType.json,
          followRedirects: true,
          validateStatus: (status) { return status < 500; }
        ),
      );
      return response.data;
    }
  }
  Future<Map<String,dynamic>> readData() async {
    Future<Map<String, dynamic>> data = responseData;
    return data;
  }
}


class Quote extends StatefulWidget {
  final APIHandler apiHandler;
  Quote({
    Key key,
    @required this.apiHandler
  }) : super(key: key);
  @override
  QuoteState createState() => QuoteState();
}
class QuoteState extends State<Quote> {
  Future<Map<String,dynamic>> quoteMap;
  int index;
  @override
  void initState(){
    super.initState();
    index = 1;
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
            Color gradientOne = Color(int.parse('0xFF'+quoteList[number][1]));
            Color gradientTwo = Color(int.parse('0xFF'+quoteList[number][2]));
            return Scaffold(
              floatingActionButton: new Padding(
                padding: EdgeInsets.all(30),
                child: new Container(
                  height: 100,
                  width: 100,
                  child: new FittedBox(
                    child: new Padding(
                      padding: EdgeInsets.all(20),
                      child: new FloatingActionButton(
                        backgroundColor: Color(0xFF000000),
                        foregroundColor: Color(0xFFFFFFFF),
                        child: Icon(
                          Icons.sync_sharp,
                          color: Color(0xFFFFFFFF),
                          size: 30,
                        ),
                        onPressed: () {
                          setState((){
                            if (index  == quoteListLength){
                              index = 0;
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
                      height: 200
                    ),
                    new Padding(
                      padding: EdgeInsets.all(20),
                      child: new Text(
                        '$quote',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          fontSize:  34,
                          fontFamily: 'PSB',
                          color: Color(0xFFFFFFFF)
                        )
                      )
                    )
                  ]
                )
              )
            ));
          }
        }
      }
    );
  }
}
