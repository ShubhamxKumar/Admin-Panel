import 'package:Admin_Panel/userFunctions.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class OrderDetailScreen extends StatefulWidget {
  final String urlParam;
  OrderDetailScreen({this.urlParam});
  @override
  _OrderDetailScreenState createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          'Order Items Details',
          style: TextStyle(
            fontFamily: 'primary',
            color: Colors.black,
            fontSize: 25,
            letterSpacing: 1.5,
          ),
        ),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          print(details['response']);
          return ListView.builder(
            itemBuilder: (context, index) {
              if (details['response'].length == 0) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/noitems.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'No Items for this order',
                        style: TextStyle(
                          fontFamily: 'secondary',
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                );
              }
              return Container(
                margin: EdgeInsets.all(5),
                child: Card(
                  elevation: 3,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.width * 0.5,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                details['response'][index]['prod_img'],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          'Order Id: ' +
                              details['response'][index]['order_id'].toString(),
                          style: TextStyle(
                            fontFamily: 'secondary',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Product Quantity: ' +
                              details['response'][index]['prod_qty'].toString(),
                          style: TextStyle(
                            fontFamily: 'secondary',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Product Id: ' +
                              details['response'][index]['prod_id'].toString(),
                          style: TextStyle(
                            fontFamily: 'secondary',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Product Price: ' +
                              details['response'][index]['prod_price']
                                  .toString(),
                          style: TextStyle(
                            fontFamily: 'secondary',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Product Name: ' +
                              details['response'][index]['prod_name'],
                          style: TextStyle(
                            fontFamily: 'secondary',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Vendor Tag: ' +
                              details['response'][index]['vendor_tag'],
                          style: TextStyle(
                            fontFamily: 'secondary',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ), 
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: details['response'].length,
          );
        },
        future: getOrderDetails(widget.urlParam),
      ),
    );
  }
}
