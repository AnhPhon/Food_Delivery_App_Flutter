import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/contants.dart';
import 'package:fooddeliveryapp/screens/Home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: kWhiteColor,
          elevation: 0,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(fontWeight: FontWeight.bold),
        ),
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
      ),
      home: HomeScreen(),
    );
  }
}
