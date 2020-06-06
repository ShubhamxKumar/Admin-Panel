import 'package:Admin_Panel/userFunctions.dart';
import 'package:flutter/material.dart';
import 'package:Admin_Panel/widgets/appDrawer.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
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
        'Orders',
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
                image: AssetImage('assets/images/orderlist.png'),
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
                  'ORDERS',
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
            height: MediaQuery.of(context).size.height -
                (appbar.preferredSize.height +
                    MediaQuery.of(context).padding.top +
                    MediaQuery.of(context).size.width * 0.6),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 10,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    AssetImage('assets/images/cartAvatar.png'),
                                radius: 40,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  (orderList["response"][index]["order_id"] ==
                                              null ||
                                          orderList["response"][index]
                                                  ["order_id"] ==
                                              '')
                                      ? 'Order id: No Data'
                                      : 'Order id: ' +
                                          orderList["response"][index]
                                              ["order_id"],
                                  style: TextStyle(
                                    fontFamily: 'secondary',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  (orderList["response"][index]["order_date"] ==
                                              null ||
                                          orderList["response"][index]
                                                  ["order_date"] ==
                                              '')
                                      ? 'Order date: No Data'
                                      : 'Order date: ' +
                                          orderList["response"][index]
                                              ["order_date"],
                                  style: TextStyle(
                                    fontFamily: 'secondary',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  (orderList["response"][index]
                                                  ["total_items"] ==
                                              null ||
                                          orderList["response"][index]
                                                  ["total_items"] ==
                                              '')
                                      ? 'Total Items: No Data'
                                      : 'Total Items: ' +
                                          orderList["response"][index]
                                              ["total_items"].toString(),
                                  style: TextStyle(
                                    fontFamily: 'secondary',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  (orderList["response"][index]
                                                  ["total_amount"] ==
                                              null ||
                                          orderList["response"][index]
                                                  ["total_amount"] ==
                                              '')
                                      ? 'Total Amount: No Data'
                                      : 'Total Amount: ' +
                                          orderList["response"][index]
                                              ["total_amount"].toString(),
                                  style: TextStyle(
                                    fontFamily: 'secondary',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  (orderList["response"][index]
                                                  ["status_of_order"] ==
                                              null ||
                                          orderList["response"][index]
                                                  ["status_of_order"] ==
                                              '')
                                      ? 'Order Status: No Data'
                                      : 'Order Status: ' +
                                          orderList["response"][index]
                                              ["status_of_order"],
                                  style: TextStyle(
                                    fontFamily: 'secondary',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                RaisedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Mark as Delivered',
                                    style:TextStyle(
                                      fontFamily: 'secondary',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19,
                                      color: Colors.white,
                                    ),
                                  ),
                                  color: Colors.black,
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
              itemCount: orderList["response"].length,
            ),
          ),
        ],
      ),
    );
  }
}
