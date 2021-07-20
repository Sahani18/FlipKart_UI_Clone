import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'buy.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          Icon(
            Icons.mic,
            color: Colors.white,
            size: 30,
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: Colors.white,
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
        ],
        flexibleSpace: Padding(
          padding: EdgeInsets.only(top: 10),
        ),
      ),
      body: SingleChildScrollView(
        //padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 400,
                  width: double.infinity,
                  child: _buildSliderWidget(),
                ),
                _hoverIcon(),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 300,
              width: double.infinity,
              child: _buildProductDetailWidget(),
            ),
            Divider(
              thickness: 1,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
              height: 200,
              width: double.infinity,
              //     color: Colors.green,
              child: _buildAvailableOffersWidget(),
            ),
            Divider(thickness: 8),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  _buildSliderWidget() {
    return Container(
      height: 230,
      width: double.infinity,
      child: Carousel(
        overlayShadow: true,
        dotSize: 4,
        dotBgColor: Colors.white.withOpacity(0),
        dotPosition: DotPosition.bottomCenter,
        images: [
          Image.asset(
            'assets/detail1.png',
            fit: BoxFit.fill,
          ),
          Image.asset(
            "assets/detail2.png",
            fit: BoxFit.fill,
          ),
          Image.asset(
            "assets/detail3.png",
            fit: BoxFit.fill,
          ),
          Image.asset(
            "assets/detail4.png",
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }

  _buildBottomNavigationBar() {
    return BottomAppBar(
      elevation: 20,
      child: Container(
        margin: EdgeInsets.all(12),
        height: 40,
        width: 100,
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'ADD TO CART',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 100)),
            Container(
              height: 60,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.deepOrange.shade400,
              ),
              child: GestureDetector(
                child: Center(
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder:
                            (builder) => BuyProduct()));
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }

  _hoverIcon() {
    return Positioned(
      height: 120,
      top: 20,
      left: 360,
      child: Column(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Color(0xffeeeeee),
            child: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 18)),
          CircleAvatar(
            radius: 24,
            backgroundColor: Color(0xffeeeeee),
            child: Icon(Icons.share, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  _buildProductDetailWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'APPLE iPhone 11 (Purple, 128 GB)',
          style: TextStyle(fontFamily: 'Roboto', fontSize: 18),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
        ),
        Container(
          height: 28,
          width: 120,
          child: Center(
              child: Text(
            'Extra ₹7901 off',
            style:
                TextStyle(fontFamily: 'Roboto', color: Colors.green.shade900),
          )),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.green.shade100,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 18),
        ),
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
                  fontSize: 16,
                  color: Colors.grey,
                  fontFamily: 'Roboto',
                  decoration: TextDecoration.lineThrough),
            ),
            Padding(padding: EdgeInsets.only(left: 8)),
            Text(
              '9% off',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  color: Colors.green.shade700),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 18),
        ),
        Row(
          children: [
            Icon(
              Icons.flash_on,
              color: Colors.orange,
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
            ),
            Expanded(
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Get it at just ',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.black,
                      fontSize: 17,
                    )),
                TextSpan(
                    text: '₹50,999 ',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.green.shade600,
                      fontSize: 17,
                    )),
                TextSpan(
                    text: 'with HDFC Bank Credit Card Transaction',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 17,
                        color: Colors.black)),
              ])),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: 55,
              width: 90,
              child: Image.asset("assets/flipkartAssured.png"),
            ),
            Text('FREE Delivery',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                ))
          ],
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: 'EMI from 2000/month.',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.3)),
          TextSpan(
              text: ' View Plans',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.blue.shade600,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.3)),
        ])),
        Padding(padding: EdgeInsets.only(top: 20)),
        Row(
          children: [
            Container(
              height: 28,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.green.shade800,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  '4.6 ★',
                  style: TextStyle(
                      fontFamily: 'Roboto', fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 10)),
            Text(
              '35,307 ratings',
              style: TextStyle(fontFamily: 'Roboto', color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }

  _buildAvailableOffersWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Available offers',
          style: TextStyle(
              fontFamily: 'Roboto', fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        Row(
          children: [
            Icon(
              Icons.local_offer,
              color: Colors.green,
              size: 20,
            ),
            Padding(padding: EdgeInsets.only(left: 10)),
            Expanded(
                child: Text(
              '10% off on HDFC Bank Credit Card Transactions, up to 1000, On orders of 5...',
              style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
            )),
            Icon(
              Icons.arrow_right,
              size: 35,
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        Row(
          children: [
            Icon(
              Icons.local_offer,
              color: Colors.green,
              size: 20,
            ),
            Padding(padding: EdgeInsets.only(left: 10)),
            Expanded(
                child: Text(
              '5% Unlimited Cashback on Flipkart Axis Bank Credit Card',
              style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
            )),
            Icon(
              Icons.arrow_right,
              size: 35,
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        Row(
          children: [
            Icon(
              Icons.local_offer,
              color: Colors.green,
              size: 20,
            ),
            Padding(padding: EdgeInsets.only(left: 10)),
            Expanded(
                child: Text(
              '10% off on Bank of Baroda Mastercard debit card first time transaction,Terms and...',
              style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
            )),
            Icon(
              Icons.arrow_right,
              size: 35,
            ),
          ],
        ),
      ],
    );
  }
}
