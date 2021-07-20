import 'package:flutter/material.dart';

class CatagoryPage extends StatefulWidget {
  @override
  _CatagoryPageState createState() => _CatagoryPageState();
}

class _CatagoryPageState extends State<CatagoryPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All Catagories',
          style: TextStyle(fontFamily:'Roboto',color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.search), color: Colors.white, onPressed: () {}),
          IconButton(
              icon: Icon(Icons.mic), color: Colors.white, onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Colors.white,
              onPressed: () {}),
          Padding(padding: EdgeInsets.only(right: 10)),
        ],
      ),
      body: Container(
          padding: EdgeInsets.all(8),
          height: height,
          width: width,
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              Container(
                height: 130,
                width: 130,
                color: Colors.white,
                child: Column(
                  children: [
                    Image.asset("assets/1.png", fit: BoxFit.fill),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      'Fashion',
                      style: TextStyle(fontFamily:'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 130,
                width: 130,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      child: Image.asset("assets/2.png", fit: BoxFit.fill),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      'Mobiles',
                      style: TextStyle(fontFamily:'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 130,
                width: 130,
                color: Colors.white,
                child: Column(
                  children: [
                    Image.asset("assets/3.png", fit: BoxFit.fill),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      'Electronics',
                      style: TextStyle(fontFamily:'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 130,
                width: 130,
                color: Colors.white,
                child: Column(
                  children: [
                    Image.asset("assets/4.png", fit: BoxFit.fill),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      'Home',
                      style: TextStyle(fontFamily:'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 130,
                width: 130,
                color: Colors.white,
                child: Column(
                  children: [
                    Image.asset("assets/5.png", fit: BoxFit.fill),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      'Appliances',
                      style: TextStyle(fontFamily:'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 130,
                width: 130,
                color: Colors.white,
                child: Column(
                  children: [
                    Image.asset("assets/6.png", fit: BoxFit.fill),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      'Beauty',
                      style: TextStyle(fontFamily:'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 130,
                width: 130,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      child: Image.asset("assets/7.png", fit: BoxFit.fill),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      'Toys & Baby',
                      style: TextStyle(fontFamily:'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 130,
                width: 130,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      child: Image.asset("assets/8.png", fit: BoxFit.fill),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      'Sports & More',
                      style: TextStyle(fontFamily:'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 130,
                width: 130,
                color: Colors.white,
                child: Column(
                  children: [
                    Image.asset("assets/9.png", fit: BoxFit.fill),
                    Padding(padding: EdgeInsets.only(top: 35)),
                    Text(
                      'Furniture',
                      style: TextStyle(fontFamily:'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 130,
                width: 130,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      child: Image.asset("assets/10.png", fit: BoxFit.fill),
                    ),
                    // Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      'Flights',
                      style: TextStyle(fontFamily:'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 130,
                width: 130,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      child: Image.asset("assets/11.png", fit: BoxFit.fill),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      'Gift Card',
                      style: TextStyle(fontFamily:'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 130,
                width: 130,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      child: Image.asset("assets/12.png", fit: BoxFit.fill),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      "India's Heritage",
                      style: TextStyle(fontFamily:'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 130,
                width: 130,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      child: Image.asset("assets/13.png", fit: BoxFit.fill),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      'Insurance',
                      style: TextStyle(fontFamily:'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 130,
                width: 130,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      child: Image.asset("assets/14.png", fit: BoxFit.fill),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      'Food & More',
                      style: TextStyle(fontFamily:'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
