import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filters',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        actions: [
          Center(
            child: Text(
              'Clear Filters',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
        ],
      ),
      body: Container(
        //color: Colors.grey.shade300,

        margin: EdgeInsets.only(
          top: 15,
        ),
        child: Row(
          children: [
            Container(
              height: double.infinity,
              width: 140,
              color: Colors.grey.shade300,
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: _buildCatagoryFilter(),
              ),
            ),
            Container(
              height: double.infinity,
              width: 280,
              color: Colors.white,
              child: _buildSubFilter(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  _buildCatagoryFilter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.white,
          height: 30,
          width: 140,
          child: Text(
            'Price',
            style: TextStyle(fontFamily:'Roboto',
              fontSize: 18,
              color: Colors.blue.shade800,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 36)),
        Text(
          'SuperCoins Price',
          style: TextStyle(fontFamily:'Roboto',
            fontSize: 18,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 36)),
        Text(
          'F-Assured',
          style: TextStyle(fontFamily:'Roboto',
            fontSize: 18,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 36)),
        Text(
          'Ideal For',
          style: TextStyle(fontFamily:'Roboto',
            fontSize: 18,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 36)),
        Text(
          'Brand',
          style: TextStyle(fontFamily:'Roboto',
            fontSize: 18,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 36)),
        Text(
          'Discount',
          style: TextStyle(fontFamily:'Roboto',
            fontSize: 18,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 36)),
        Text(
          'Customer Ratings',
          style: TextStyle(fontFamily:'Roboto',
            fontSize: 18,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 36)),
        Text(
          'Offers',
          style: TextStyle(fontFamily:'Roboto',
            fontSize: 18,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 36)),
        Text(
          'Availability',
          style: TextStyle(fontFamily:'Roboto',
            fontSize: 18,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 36)),
        Text(
          'Catagory',
          style: TextStyle(fontFamily:'Roboto',
            fontSize: 18,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 36)),
      ],
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
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('1,69,523',
                    style:
                        TextStyle(fontFamily:'Roboto',fontWeight: FontWeight.bold, fontSize: 18)),
                Text('products found',
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ),
            Padding(padding: EdgeInsets.only(left: 130)),
            Container(
              height: 60,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.deepOrange.shade400,
              ),
              child: Center(
                child: Text(
                  'Apply',
                  style: TextStyle(fontFamily:'Roboto',
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

  _buildSubFilter() {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: false,onChanged: (bool){},
            ),
            Padding(padding: EdgeInsets.only(left: 16)),
            Text(
              'Rs. 249 and Below',
              style: TextStyle(fontFamily:'Roboto',fontSize: 18),
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,onChanged: (bool){}
            ),
            Padding(padding: EdgeInsets.only(left: 16)),
            Text(
              'Rs. 250 and 499',
              style: TextStyle(fontFamily:'Roboto',fontSize: 18),
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,onChanged: (bool){}
            ),
            Padding(padding: EdgeInsets.only(left: 16)),
            Text(
              'Rs. 500 and 999',
              style: TextStyle(fontFamily:'Roboto',fontSize: 18),
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,onChanged: (bool){}
            ),
            Padding(padding: EdgeInsets.only(left: 16)),
            Text(
              'Rs. 1000 and 1499',
              style: TextStyle(fontFamily:'Roboto',fontSize: 18),
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,onChanged: (bool){}
            ),
            Padding(padding: EdgeInsets.only(left: 16)),
            Text(
              'Rs. 1500 and 1999',
              style: TextStyle(fontFamily:'Roboto',fontSize: 18),
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,onChanged: (bool){}
            ),
            Padding(padding: EdgeInsets.only(left: 16)),
            Text(
              'Rs. 2000 and 2499',
              style: TextStyle(fontFamily:'Roboto',fontSize: 18),
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,onChanged: (bool){}
            ),
            Padding(padding: EdgeInsets.only(left: 16)),
            Text(
              'Rs. 2500 and Above',
              style: TextStyle(fontFamily:'Roboto',fontSize: 18),
            ),
          ],
        ),
      ],
    );
  }
}
