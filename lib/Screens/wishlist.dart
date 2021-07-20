import 'package:flutter/material.dart';

class Wishlist extends StatefulWidget {
  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Wishlist & Collections',
            style: TextStyle(fontFamily: 'Roboto',
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
              color: Colors.white,
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            tabs: [
              Tab(
                text: 'My collections',
              ),
              Tab(
                text: 'Collections I follow',
              ),
            ],
          ),
        ),
        body: _tabBarView(),
      ),
    );
  }

  _tabBarView() {
    return TabBarView(children: [
      Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.black12,
            ),
            height: 180,
            width: double.infinity,
            child: _myWishList(),
          ),
          Padding(padding: EdgeInsets.only(top: 410)),
          Divider(
            thickness: 2,
            color: Colors.black12,
          ),
          _buildBottomBar(),
        ],
      ),
      Container(
        margin: EdgeInsets.only(top: 10),
        child: Image.asset(
          "assets/wish2.jpeg",
          fit: BoxFit.fill,
        ),
      ),
    ]);
  }

  _buildBottomBar() {
    return Container(
      margin: EdgeInsets.only(left: 12, right: 12),
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.blue.shade700),
      ),
      width: double.infinity,
      child: Center(
        child: Text(
          '+   Create a new collection',
          style: TextStyle(fontFamily: 'Roboto',color: Colors.blue.shade700, fontSize: 18),
        ),
      ),
    );
  }

  _myWishList() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          color: Colors.white,
          height: 90,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(left: 4),
                child: Image.asset(
                  "assets/wish1_1.jpg",
                  fit: BoxFit.fill,
                ),
                width: 80,
              ),
              Padding(padding: EdgeInsets.only(left: 4)),
              SizedBox(
                height: 100,
                width: 6,
                child: Container(
                  color: Colors.black12,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "assets/wish1_2.png",
                  fit: BoxFit.fill,
                ),
                width: 70,
              ),
              Padding(padding: EdgeInsets.only(left: 4)),
              SizedBox(
                height: 100,
                width: 6,
                child: Container(
                  color: Colors.black12,
                ),
              ),
              Container(
                width: 80,
              ),
              Padding(padding: EdgeInsets.only(left: 4)),
              SizedBox(
                height: 100,
                width: 6,
                child: Container(
                  color: Colors.black12,
                ),
              ),
              Container(
                width: 80,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(2),
          height: 70,
          color: Colors.white,
          width: double.infinity,
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Wishlist',
                  style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.black54,
                      size: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4),
                    ),
                    Text(
                      'Private ·',
                      style: TextStyle(fontFamily: 'Roboto',
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4),
                    ),
                    Text(
                      '2 items',
                      style: TextStyle(fontFamily: 'Roboto',
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
