import 'package:flutter/material.dart';
import 'package:leventh/first.dart';
import 'package:leventh/news_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
