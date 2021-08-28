/// Quotly by Alexander Abraham
/// a.k.a. "The Black Unicorn".
/// Licensed under the MIT license.

import 'src/data.dart';
import 'src/quote.dart';
import 'src/variables.dart';
import 'package:flutter/material.dart';

/// Main entry point
/// for the Dart VM.
void main(){
  runApp(
    new MaterialApp(
      home: Quote(apiHandler: APIHandler()),
      debugShowCheckedModeBanner: isFalse
    )
  );
}
