import 'package:flutter/material.dart';
import 'package:twitter/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Twitter Clone",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff15202C),
        primaryColorDark: Color(0xff1B2939),
        accentColor: Color(0xff1CA1F1),
      ),
     home: MyHome(),
    );
  }
}
