import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Orders',
          style: TextStyle(fontFamily: 'Roboto',color: Colors.white),
        ),
        actions: [
          Icon(Icons.search),
          Padding(padding: EdgeInsets.only(left: 18)),
          Icon(Icons.shopping_cart),
          Padding(padding: EdgeInsets.only(left: 18)),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 15),
        child: Column(
          children: [
            _buildOrderTileOne(),
            Divider(thickness: 6),
            Padding(padding: EdgeInsets.only(top: 10)),
            _buildOrderTileTwo(),
            Divider(thickness: 6),
            Padding(padding: EdgeInsets.only(top: 10)),
            _buildOrderTileThree(),
            Divider(thickness: 6),
            Padding(padding: EdgeInsets.only(top: 10)),
            _buildOrderTileFour(),
            Divider(thickness: 1,),

          ],
        ),

      ),
    );
  }

  _buildOrderTileOne(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 130,
          width: 270,
          margin: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'MILONI USA CHOCOLATE',
                style: TextStyle(fontFamily: 'Roboto',fontSize: 20),
              ),
              Padding(padding: EdgeInsets.only(top: 8)),
              Text(
                'CRUNCHY PEANUT BUTTER 1...',
                style: TextStyle(fontFamily: 'Roboto',fontSize: 19),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  Text(
                    '•',
                    style: TextStyle(
                      color: Colors.green.shade700,
                      fontSize: 50,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 8)),
                  Text(
                    'Delivered on Feb 27',
                    style: TextStyle(
                      color: Colors.grey,fontFamily: 'Roboto',
                      fontSize: 16,
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
        Container(
          height: 120,
          width: 145,
          child: Image.asset(
            "assets/order.png",
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
  _buildOrderTileTwo(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 130,
          width: 270,
          margin: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'MILONI USA CHOCOLATE',
                style: TextStyle(fontSize: 20,fontFamily: 'Roboto'),
              ),
              Padding(padding: EdgeInsets.only(top: 8)),
              Text(
                'CRUNCHY PEANUT BUTTER 1...',
                style: TextStyle(fontSize: 19,fontFamily: 'Roboto'),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  Text(
                    '•',
                    style: TextStyle(
                      color: Colors.green.shade700,
                      fontSize: 50,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 8)),
                  Text(
                    'Delivered on Feb 03',
                    style: TextStyle(fontFamily: 'Roboto',
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
        Container(
          height: 120,
          width: 145,
          child: Image.asset(
            "assets/order.png",
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }

  _buildOrderTileThree(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 130,
          width: 270,
          margin: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'NOVA Prime Series NHT 1085',
                style: TextStyle(fontSize: 20,fontFamily: 'Roboto'),
              ),
              Padding(padding: EdgeInsets.only(top: 8)),
              Text(
                'Runtime: 45 min Trimmer for...',
                style: TextStyle(fontSize: 19,fontFamily: 'Roboto'),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  Text(
                    '•',
                    style: TextStyle(
                      color: Colors.green.shade700,
                      fontSize: 50,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 8)),
                  Text(
                    'Delivered on Jan 07',
                    style: TextStyle(fontFamily: 'Roboto',
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
        Container(margin: EdgeInsets.only(left: 20),
          height: 120,
          width: 125,
          child: Image.asset(
            "assets/order2.png",
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }

  _buildOrderTileFour(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 130,
          width: 270,
          margin: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'realme 108 cm (43 inch) Full HD',
                style: TextStyle(fontFamily: 'Roboto',fontSize: 18),
              ),
              Padding(padding: EdgeInsets.only(top: 8)),
              Text(
                'LED Smart Android TV',
                style: TextStyle(fontFamily: 'Roboto',fontSize: 18),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  Text(
                    '•',
                    style: TextStyle(fontFamily: 'Roboto',
                      color: Colors.green.shade700,
                      fontSize: 50,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 8)),
                  Text(
                    'Delivered on Nov 13, 2020',
                    style: TextStyle(fontFamily: 'Roboto',
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
        Container(margin: EdgeInsets.only(left: 20),
          height: 100,
          width: 130,
          child: Image.asset(
            "assets/order3.png",
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }

}
