import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications(2)',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Roboto',
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Colors.white,
              onPressed: () {}),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        height: height,
        width: width,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 70,
                  child: Image.asset(
                    "assets/notification.jpeg",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                  height: 130,
                  width: 280,
                  //color: Colors.green,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Product Delivered',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          fontFamily: 'Roboto',
                          wordSpacing: 2,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        "Your package containing MILONI USA CHOCOLATE CHRUNCHY...has been delivered.Thanks for shopping!",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          color: Colors.grey,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        '15 days ago',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Roboto',
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 70,
                  child: Image.asset(
                    "assets/notification.jpeg",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                  height: 130,
                  width: 280,
                  //color: Colors.green,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Product Delivered',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          fontSize: 21,
                          wordSpacing: 2,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        "Your package containing MILONI USA CHOCOLATE CHRUNCHY...has been delivered.Thanks for shopping!",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        '15 days ago',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
