
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:Admin_Panel/widgets/appDrawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static var _scaffoldKey = GlobalKey<ScaffoldState>();
  var appBar = AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Admin Panel',
          style: TextStyle(
            fontFamily: 'primary',
            color: Colors.black,
            fontSize: 25,
            letterSpacing: 1.5,
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: SafeArea(
        child: AppDrawer(appBar.preferredSize.height),
      ),
      appBar: appBar,
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.width * 0.56875,
          child: Image.asset(
            'assets/images/adminHome.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
