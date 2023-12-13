import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void hideStatusBar() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.white));
}
