import 'package:Admin_Panel/screens/orderScreen.dart';
import 'package:Admin_Panel/screens/userListScreen.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  double headContainerHeight;
  AppDrawer(this.headContainerHeight);
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: widget.headContainerHeight,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Center(
              child: Text(
                'Welcome, Admin',
                style: TextStyle(
                  fontFamily: 'primary',
                  color: Colors.white,
                  fontSize: 25,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => UserListScreen(),
                  ),
                );
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.person,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Users',
                    style: TextStyle(
                      fontFamily: 'secondary',
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => OrderScreen(),
                  ),
                );
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Orders',
                    style: TextStyle(
                      fontFamily: 'secondary',
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
