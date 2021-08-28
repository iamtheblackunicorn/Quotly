import 'src/data.dart';
import 'src/quote.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      home: Quote(apiHandler: APIHandler()),
      debugShowCheckedModeBanner: false
    )
  );
}
