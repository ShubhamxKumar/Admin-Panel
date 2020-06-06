
import 'package:Admin_Panel/userFunctions.dart';
import 'package:flutter/material.dart';
import 'package:Admin_Panel/screens/homeScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
  getUserData();
  getOrderData();
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
