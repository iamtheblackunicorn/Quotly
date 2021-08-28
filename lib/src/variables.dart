/// Quotly by Alexander Abraham
/// a.k.a. "The Black Unicorn".
/// Licensed under the MIT license.

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:termstyle/termstyle.dart';

/// These variables are
/// Quotly's main variables.
int initIndex = 0;
bool isTrue = true;
bool isFalse = false;
Dio dio = new Dio();
double elevation = 0;
double fabSize = 100;
double fontSize = 34;
String info = 'INFO';
double pushDown = 250;
double iconSize = 150;
String author = 'TBU';
double stdPadding = 20;
String prefix = '0xFF';
String license = 'MIT';
String name = 'QUOTLY';
double imageSize = 150;
double stdRounding = 25;
String version = '1.0.0';
String nameText = 'NAME';
String defaultFont = 'PSB';
String errorText = 'Error!';
double specialPushDown = 250;
String authorText = 'AUTHOR';
String twitter = '@blvckuncrn';
String twitterText = 'TWITTER';
String licenseText = 'LICENSE';
String versionText = 'VERSION';
String loadingText = 'Loading!';
Color mainColor = Color(0xFFFFFFFF);
Color gradientOne = Color(0xFFFF66FF);
Color gradientTwo = Color(0xFFCC9900);
Color accentColor = Color(0xFF000000);
String redHeart = getEmoji('redHeart');
String logoPath = 'assets/images/icon.png';
String unicornHead = getEmoji('unicornHead');
String quotesURL = 'https://blckunicorn.art/assets/quotly/quotes.json';

Map<String,String> creditsDict = {
  nameText: name,
  versionText: version,
  authorText: '$author $unicornHead $redHeart',
  licenseText: license,
  twitterText: twitter
};
