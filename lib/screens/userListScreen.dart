import 'package:Admin_Panel/userFunctions.dart';
import 'package:flutter/material.dart';

import 'package:Admin_Panel/widgets/appDrawer.dart';

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,
      title: Text(
        'Users List',
        style: TextStyle(
          fontFamily: 'primary',
          color: Colors.black,
          fontSize: 25,
          letterSpacing: 1.5,
        ),
      ),
    );
    return Scaffold(
      appBar: appbar,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/userlist.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
              ),
              child: Center(
                child: Text(
                  'USERS',
                  style: TextStyle(
                    fontFamily: 'secondary',
                    letterSpacing: 5,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            height: MediaQuery.of(context).size.height -
                (MediaQuery.of(context).size.width * 0.6 +
                    appbar.preferredSize.height +
                    MediaQuery.of(context).padding.top),
            child: ListView.builder(
              itemBuilder: (context, index) {
                print(index);
                return Container(
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/images/userAvatar.png',
                              ),
                              radius: 40,
                              backgroundColor: Colors.white,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  (userList["response"][index]["name"] ==
                                              null ||
                                          userList["response"][index]["name"] ==
                                              '')
                                      ? 'Name: No-Data'
                                      : 'Name: ' +
                                          userList["response"][index]["name"],
                                  style: TextStyle(
                                      fontFamily: 'secondary',
                                      fontWeight: FontWeight.w600),
                                ),
                                FittedBox(
                                  child: Text(
                                  (userList["response"][index]["email"] ==
                                              null ||
                                          userList["response"][index]["email"] ==
                                              '')
                                      ? 'Email: No-Data'
                                      : 'Email: ' +
                                          userList["response"][index]["email"],
                                  style: TextStyle(
                                      fontFamily: 'secondary',
                                      fontWeight: FontWeight.w600),
                                ),
                                ),
                                Text(
                                  (userList["response"][index]["phone"] ==
                                              null ||
                                          userList["response"][index]["phone"] ==
                                              '')
                                      ? 'Phone: No-Data'
                                      : 'Phone: ' +
                                          userList["response"][index]["phone"],
                                  style: TextStyle(
                                      fontFamily: 'secondary',
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  (userList["response"][index]["lanmark"] ==
                                              null ||
                                          userList["response"][index]["lanmark"] ==
                                              '')
                                      ? 'Landmark: No-Data'
                                      : 'Landmark: ' +
                                          userList["response"][index]["lanmark"],
                                  style: TextStyle(
                                      fontFamily: 'secondary',
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  (userList["response"][index]["city"] ==
                                              null ||
                                          userList["response"][index]["city"] ==
                                              '')
                                      ? 'City: No-Data'
                                      : 'City: ' +
                                          userList["response"][index]["city"],
                                  style: TextStyle(
                                      fontFamily: 'secondary',
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  (userList["response"][index]["pincode"] ==
                                              null ||
                                          userList["response"][index]["pincode"] ==
                                              '')
                                      ? 'Pincode: No-Data'
                                      : 'Pincode: ' +
                                          userList["response"][index]["pincode"],
                                  style: TextStyle(
                                      fontFamily: 'secondary',
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: userList["response"].length,
            ),
          ),
        ],
      ),
    );
  }
}
