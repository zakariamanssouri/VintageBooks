import 'package:book_shop/pages/login.dart';
import 'package:book_shop/theme/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(brightness: Brightness.light, primaryColor: primary),
    home: UserLogin(),
  ));
}

