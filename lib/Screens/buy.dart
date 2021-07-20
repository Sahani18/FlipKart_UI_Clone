import 'package:flutter/material.dart';

class BuyProduct extends StatefulWidget {
  @override
  _BuyProductState createState() => _BuyProductState();
}

class _BuyProductState extends State<BuyProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order Summary',
          style: TextStyle(fontFamily: 'Roboto', color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildOrderTimeline(),
            Divider(
              thickness: 10,
              color: Colors.grey.shade300,
            ),
            _buildCustomerDetail(),
            Divider(
              thickness: 14,
              color: Colors.grey.shade300,
            ),
            _buildProductDetailWidget(),
            Divider(
              thickness: 14,
              color: Colors.grey.shade300,
            ),
            _buildPriceDetailWidget(),
            Divider(
              thickness: 14,
              color: Colors.grey.shade300,
            ),
            Container(
              height: 140,
              child: Image.asset(
                "assets/flipkartplus.jpeg",
                fit: BoxFit.fill,
              ),
            ),
            Divider(
              thickness: 4,
              color: Colors.grey.shade300,
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  _buildBottomNavigationBar() {
    return BottomAppBar(
      elevation: 20,
      child: Container(
        margin: EdgeInsets.all(10),
        height: 40,
        width: 100,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(' ₹ 53,999',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                Text(' View price details',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.blue.shade700)),
              ],
            ),
            Padding(padding: EdgeInsets.only(left: 100)),
            Container(
              height: 60,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.deepOrange.shade400,
              ),
              child: Center(
                child: Text(
                  'Place Order',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildOrderTimeline() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 15,
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.blue.shade50,
                  child: Icon(Icons.done),
                ),
              ),
              SizedBox(
                height: 2,
                width: 120,
                child: Divider(
                  color: Colors.blue,
                  indent: 10,
                  endIndent: 10,
                  thickness: 1,
                ),
              ),
              CircleAvatar(
                child: Text(
                  '2',
                  style: TextStyle(fontFamily: 'Roboto', color: Colors.white),
                ),
                radius: 15,
              ),
              SizedBox(
                height: 2,
                width: 120,
                child: Divider(
                  color: Colors.grey,
                  indent: 10,
                  endIndent: 10,
                  thickness: 1,
                ),
              ),
              CircleAvatar(
                radius: 15,
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.white,
                  child: Text('3'),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 8)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Address',
                style: TextStyle(
                    fontFamily: 'Roboto', color: Colors.grey.shade800),
              ),
              Padding(padding: EdgeInsets.only(left: 1)),
              Text(
                'Order Summary',
                style: TextStyle(
                  fontFamily: 'Roboto',
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 1)),
              Text('Payment',
                  style: TextStyle(
                      fontFamily: 'Roboto', color: Colors.grey.shade800)),
            ],
          ),
        ],
      ),
    );
  }

  _buildCustomerDetail() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'SUBHANSHU SAHANI',
                style: TextStyle(fontFamily: 'Roboto', fontSize: 20),
              ),
              Padding(padding: EdgeInsets.only(left: 8)),
              Container(
                height: 20,
                width: 60,
                //color: Colors.grey.shade200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.grey.shade200),
                child: Center(
                  child: Text(
                    'HOME',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Text(
            'basharatpur, Gorakhpur-273004',
            style: TextStyle(
                fontFamily: 'Roboto', fontSize: 16, color: Colors.black87),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Text(
            '9098787656',
            style: TextStyle(
                fontFamily: 'Roboto', fontSize: 16, color: Colors.black87),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Container(
            height: 50,
            color: Colors.blue.shade700,
            child: Center(
              child: Text(
                'Change or Add Address',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildProductDetailWidget() {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 28,
            width: 120,
            child: Center(
                child: Text(
              'Special Price',
              style:
                  TextStyle(fontFamily: 'Roboto', color: Colors.green.shade900),
            )),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green.shade100,
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            children: [
              Container(
                height: 100,
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'APPLE iPhone 11 (White, 128 GB)',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 18),
                    ),
                    // Padding(padding: EdgeInsets.all(8)),
                    Row(
                      children: [
                        Container(
                          height: 27,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.green.shade800,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              '4.6 ★',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 8)),
                        Text(
                          '(34,798)',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              color: Colors.black54),
                        ),
                        Padding(padding: EdgeInsets.only(left: 8)),
                        Container(
                            height: 60,
                            width: 65,
                            child: Image.asset(
                              "assets/flipkartAssured.png",
                              fit: BoxFit.fill,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                child: Image.asset(
                  "assets/cart.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          Container(
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 280,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '₹ 53,999',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          Padding(padding: EdgeInsets.only(left: 8)),
                          Text(
                            '₹ 53,999',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 16,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                          Padding(padding: EdgeInsets.only(left: 8)),
                          Text(
                            '9% off',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.green.shade700),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        '4 offers available',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.green.shade700),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Row(
                        children: [
                          Text(
                            'Delivery by Tomorrow, Thu |',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                color: Colors.black),
                          ),
                          Padding(padding: EdgeInsets.only(left: 8)),
                          Text(
                            'Free',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.green.shade700),
                          ),
                          Padding(padding: EdgeInsets.only(left: 8)),
                          Text(
                            '₹40',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                color: Colors.black87,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 120,
                  margin: EdgeInsets.only(top: 16),
                  child: Container(
                    height: 30,
                    child: Center(
                      child: Text(
                        'Qty : 1  ▼',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildPriceDetailWidget() {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'PRICE DETAILS',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 18),
          ),
          Padding(padding: EdgeInsets.only(top: 5)),
          Divider(),
          Row(
            children: [
              Text(
                'Price (1 item)',
                style: TextStyle(
                  fontFamily: 'Roboto',
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 250)),
              Text(' ₹ 59,900'),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Row(
            children: [
              Text(
                'Discount',
                style: TextStyle(
                  fontFamily: 'Roboto',
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 290)),
              Text(
                ' -₹5,901',
                style: TextStyle(
                    fontFamily: 'Roboto', color: Colors.green.shade700),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Row(
            children: [
              Text(
                'Delivery Charges',
                style: TextStyle(
                  fontFamily: 'Roboto',
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 250)),
              Text(
                ' FREE',
                style: TextStyle(
                    fontFamily: 'Roboto', color: Colors.green.shade700),
              ),
            ],
          ),
          Divider(),
          Padding(padding: EdgeInsets.only(top: 15)),
          Row(
            children: [
              Text(
                'Total Amount',
                style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(left: 230)),
              Text(' ₹ 53,999',
                  style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.bold, fontSize: 18)),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          Divider(),
          Container(
            height: 25,
            width: 400,
            margin: EdgeInsets.only(top: 10, left: 5),
            child: Text('You will save ₹5,901 on this order',
                style: TextStyle(fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.green.shade700)),
          ),
        ],
      ),
    );
  }
}
