import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home_page.dart';
import 'package:food_delivery_app/utils/color_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      debugShowCheckedModeBanner: false,
      theme: colorTheme,
      home: HomePage(),
    );
  }
}