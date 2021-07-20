import 'package:flipkart_clone/Screens/filter.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Cart',
          style: TextStyle(fontFamily: 'Roboto',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAddressWidget(),
              Divider(
                thickness: 10,
              ),
              _buildProductDetailWidget(),
              Divider(
                thickness: 1.5,
              ),
              _buildAProtectWidget(),
              Divider(
                thickness: 10,
              ),
              _buildPriceDetailWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  _buildAddressWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 100,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      'Deliver to  ',
                      style: TextStyle(fontFamily: 'Roboto',
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'SUBH..., 273004',
                      style: TextStyle(fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 25)),
                    Container(
                      height: 20,
                      width: 50,
                      //color: Colors.grey.shade200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade200),
                      child: Center(
                        child: Text(
                          'HOME',
                          style: TextStyle(fontFamily: 'Roboto',
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                margin: EdgeInsets.only(left: 20, bottom: 10),
                child: Text(
                  "shivapuram colony,Basharatpur, Ne...",
                  style: TextStyle(fontFamily: 'Roboto',color: Colors.grey, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 100,
          width: 80,
          //margin: EdgeInsets.only,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
            ),
            child: Center(
                child: Text(
              'Change',
              style: TextStyle(fontFamily: 'Roboto',
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )),
          ),
        ),
      ],
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
              style: TextStyle(fontFamily: 'Roboto',color: Colors.green.shade900),
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
                width: 280,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'APPLE iPhone 11 (White, 128 GB)',
                      style: TextStyle(fontFamily: 'Roboto',fontSize: 18),
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
                              style:
                                  TextStyle(fontFamily: 'Roboto',fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 8)),
                        Text(
                          '(34,798)',
                          style: TextStyle(fontFamily: 'Roboto',fontSize: 16, color: Colors.black54),
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
                width: 60,
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
                            style: TextStyle(fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          Padding(padding: EdgeInsets.only(left: 8)),
                          Text(
                            '₹ 53,999',
                            style: TextStyle(fontFamily: 'Roboto',
                                fontSize: 16,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                          Padding(padding: EdgeInsets.only(left: 8)),
                          Text(
                            '9% off',
                            style: TextStyle(fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.green.shade700),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        '4 offers available',
                        style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.green.shade700),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Row(
                        children: [
                          Text(
                            'Delivery by Tomorrow, Thu |',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          Padding(padding: EdgeInsets.only(left: 8)),
                          Text(
                            'Free',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,fontFamily: 'Roboto',
                                color: Colors.green.shade700),
                          ),
                          Padding(padding: EdgeInsets.only(left: 8)),
                          Text(
                            '₹40',
                            style: TextStyle(fontFamily: 'Roboto',
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
                        style: TextStyle(fontFamily: 'Roboto',
                            fontSize: 18, fontWeight: FontWeight.bold),
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

  _buildAProtectWidget() {
    return Container(
      margin: EdgeInsets.only(left: 30),
      height: 100,
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.save_alt,
                color: Colors.grey.shade400,
              ),
              Padding(padding: EdgeInsets.only(left: 12)),
              Center(
                child: Text(
                  'Save for later',
                  style: TextStyle(fontFamily: 'Roboto',fontSize: 18),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 20)),
              SizedBox(
                height: 35,
                width: 2,
                child: Container(
                  color: Colors.grey.shade400,
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 20)),
              Icon(
                Icons.delete,
                color: Colors.grey,
              ),
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                'Remove',
                style: TextStyle(fontFamily: 'Roboto',fontSize: 18),
              ),
            ],
          ),
          Divider(),
          //Padding(padding: EdgeInsets.only(top: 4)),

          Row(
            children: [
              Icon(
                Icons.add_to_photos,
                color: Colors.grey,
              ),
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                'Servify Protect powered by App..',
                style: TextStyle(fontFamily: 'Roboto',fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(left: 45)),
              Icon(
                Icons.arrow_drop_down_outlined,
                size: 40,
              ),
            ],
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
            style: TextStyle(fontFamily: 'Roboto',
                fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 18),
          ),
          Padding(padding: EdgeInsets.only(top: 5)),
          Divider(),
          Row(
            children: [
              Text('Price (1 item)',style: TextStyle(fontFamily: 'Roboto',),),
              Padding(padding: EdgeInsets.only(left: 250)),
              Text(' ₹ 59,900',style: TextStyle(fontFamily: 'Roboto',),),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Row(
            children: [
              Text('Discount',style: TextStyle(fontFamily: 'Roboto',),),
              Padding(padding: EdgeInsets.only(left: 290)),
              Text(
                ' -₹5,901',
                style: TextStyle(fontFamily: 'Roboto',color: Colors.green.shade700),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Row(
            children: [
              Text('Delivery Charges',style: TextStyle(fontFamily: 'Roboto'),),
              Padding(padding: EdgeInsets.only(left: 250)),
              Text(
                ' FREE',
                style: TextStyle(fontFamily: 'Roboto',color: Colors.green.shade700),
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

  _buildBottomNavigationBar() {
    return BottomAppBar(
      elevation: 20,
      child: Container(
        margin: EdgeInsets.all(10),
        height: 40,
        width: 100,
        child: Row(
          children: [
            GestureDetector(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(' ₹ 53,999',
                      style:
                          TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.bold, fontSize: 18)),
                  Text(' View price details',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.blue.shade700)),
                ],
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder:
                        (builder) => FilterPage()));
              }
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
                  style: TextStyle(fontFamily: 'Roboto',
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
}
