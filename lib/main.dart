import 'package:flutter/material.dart';
import 'package:varios_widgets/src/pages/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Varios Widgets',
      debugShowCheckedModeBanner: false,
      home: HomePageTemp(),
    );
  }
}