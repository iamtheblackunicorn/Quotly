import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

int initIndex = 0;
Dio dio = new Dio();
double fabSize = 100;
double fontSize = 34;
double pushDown = 250;
double iconSize = 150;
double stdPadding = 20;
String prefix = '0xFF';
String defaultFont = 'PSB';
String errorText = 'Error';
double specialPushDown = 250;
Color mainColor = Color(0xFFFFFFFF);
Color accentColor = Color(0xFF000000);
String quotesURL = 'https://blckunicorn.art/assets/quotly/quotes.json';
