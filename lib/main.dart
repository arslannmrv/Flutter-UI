import 'package:flutter/material.dart';
import 'package:twitter/constants.dart';
import 'home_tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.app_name,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Constants.primary_color,
        primaryColorDark: Constants.primary_color_dark,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Constants.color_sheme),
      ),
      home: CommonPage(),
    );
  }
}//0xff1CA1F1
