import 'package:flipkart_clone/Screens/catagory.dart';
import 'package:flipkart_clone/Screens/orders.dart';
import 'package:flipkart_clone/Screens/productDetail.dart';
import 'package:flipkart_clone/Screens/wishlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'cart.dart';
import 'notification.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 20,
        elevation: 0,
        title: Image.asset(
          "assets/appbar.png",
          width: 160,
          height: 160,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (builder) => NotificationPage()));
            },
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (builder) => Cart()));
            },
            color: Colors.white,
          ),
        ],
        flexibleSpace: Padding(
          padding: EdgeInsets.only(top: 10),
        ),
      ),
      drawer: _buildDrawer(),
      body: Container(
        color: Colors.white,
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildSearchBar(),
              Padding(padding: EdgeInsets.all(6)),
              _buildCatagoryWidget(),
              _buildSliderWidget(),
              Divider(
                thickness: 4,
              ),
              _buildCardWidget(),
              Divider(
                thickness: 4,
              ),
              _buildSuggestionWidget(),
              Divider(
                thickness: 1,
              ),
              _buildWOWwidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  _buildCatagoryWidget() {
    return Container(
      padding: EdgeInsets.all(2),
      height: 100,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  GestureDetector(
                    child: CircleAvatar(
                      child: Icon(
                        Icons.list,
                        size: 50,
                      ),
                      radius: 30,
                    ),
                    onTap: _navigateToCatagoryPage,
                  ),
                  Padding(padding: EdgeInsets.only(top: 8)),
                  CustomText(text: 'All Categories'),
                ],
              ),
              Padding(padding: EdgeInsets.only(left: 10)),
              Column(
                children: [
                  SizedBox(
                    child: Image.asset(
                      "assets/offer.png",
                      fit: BoxFit.fill,
                    ),
                    height: 60,
                    width: 60,
                  ),
                  Padding(padding: EdgeInsets.only(top: 8)),
                  CustomText(text: 'Offer Zone'),
                ],
              ),
              Padding(padding: EdgeInsets.only(left: 10)),
              GestureDetector(
                child: Column(
                  children: [
                    SizedBox(
                      child: Image.asset("assets/2.png", fit: BoxFit.fill),
                      height: 60,
                      width: 60,
                    ),
                    Padding(padding: EdgeInsets.only(top: 8)),
                    CustomText(text: 'Mobiles'),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (builder) => ProductDetailPage()));
                },
              ),
              Padding(padding: EdgeInsets.only(left: 10)),
              Column(
                children: [
                  SizedBox(
                    child: Image.asset(
                      "assets/1.png",
                      fit: BoxFit.fill,
                    ),
                    height: 60,
                    width: 60,
                  ),
                  Padding(padding: EdgeInsets.only(top: 8)),
                  CustomText(text: 'Fashion'),
                ],
              ),
              Padding(padding: EdgeInsets.only(left: 10)),
              Column(
                children: [
                  SizedBox(
                    child: Image.asset("assets/3.png", fit: BoxFit.fill),
                    height: 60,
                    width: 60,
                  ),
                  Padding(padding: EdgeInsets.only(top: 8)),
                  CustomText(text: 'Electronics'),
                ],
              ),
              Padding(padding: EdgeInsets.only(left: 10)),
              Column(
                children: [
                  SizedBox(
                    child: Image.asset("assets/9.png", fit: BoxFit.fill),
                    height: 60,
                    width: 60,
                  ),
                  Padding(padding: EdgeInsets.only(top: 8)),
                  CustomText(text: 'Home'),
                ],
              ),
              Padding(padding: EdgeInsets.only(left: 10)),
              Column(
                children: [
                  SizedBox(
                    child: Image.asset(
                      "assets/6.png",
                      fit: BoxFit.fill,
                    ),
                    height: 60,
                    width: 60,
                  ),
                  Padding(padding: EdgeInsets.only(top: 8)),
                  CustomText(text: 'Beauty'),
                ],
              ),
              Padding(padding: EdgeInsets.only(left: 10)),
              Column(
                children: [
                  SizedBox(
                    child: Image.asset(
                      "assets/5.png",
                      fit: BoxFit.fill,
                    ),
                    height: 60,
                    width: 60,
                  ),
                  Padding(padding: EdgeInsets.only(top: 8)),
                  CustomText(text: 'Appliances'),
                ],
              ),
              Padding(padding: EdgeInsets.only(left: 10)),
              Column(
                children: [
                  SizedBox(
                    child: Image.asset(
                      "assets/7.png",
                      fit: BoxFit.fill,
                    ),
                    height: 60,
                    width: 60,
                  ),
                  Padding(padding: EdgeInsets.only(top: 8)),
                  CustomText(text: 'Toys & Baby'),
                ],
              ),
              Padding(padding: EdgeInsets.only(left: 10)),
              Column(
                children: [
                  SizedBox(
                    child: Image.asset(
                      "assets/10.png",
                      fit: BoxFit.fill,
                    ),
                    height: 60,
                    width: 60,
                  ),
                  Padding(padding: EdgeInsets.only(top: 8)),
                  CustomText(text: 'Flight'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildSliderWidget() {
    return Container(
      height: 200,
      width: double.infinity,
      child: Carousel(
        overlayShadow: true,
        dotSize: 4,
        dotBgColor: Colors.white.withOpacity(0),
        images: [
          Image.asset(
            'assets/layer2_0.jpeg',
            fit: BoxFit.fill,
          ),
          Image.asset(
            "assets/layer2_1.jpeg",
            fit: BoxFit.fill,
          ),
          Image.asset(
            "assets/layer2_2.jpeg",
            fit: BoxFit.fill,
          ),
          Image.asset(
            "assets/layer2_3.jpeg",
            fit: BoxFit.fill,
          ),
          Image.asset(
            "assets/layer2_4.jpeg",
            fit: BoxFit.fill,
          ),
          Image.asset(
            "assets/layer2_5.jpeg",
            fit: BoxFit.fill,
          ),
          Image.asset(
            "assets/layer2_6.jpeg",
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }

  _buildCardWidget() {
    return Container(
      padding: EdgeInsets.all(8),
      height: 110,
      width: double.infinity,
      child: Stack(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              height: 150,
              width: 120,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Image.asset("assets/layer3_1.png"),
                  ),
                  Padding(padding: EdgeInsets.only(top: 6)),
                  CustomText(
                      text: 'Up to 80% Off',
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  CustomText(
                      text: 'Mega Fashion Sale',
                      color: Colors.grey,
                      fontSize: 12),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(4)),
            Container(
              height: 150,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Image.asset("assets/layer3_2.jpeg"),
                  ),
                  Padding(padding: EdgeInsets.only(top: 6)),
                  CustomText(
                      text: 'From Rs 52,990',
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  CustomText(
                      text: 'Lenovo Gaming Days',
                      color: Colors.grey,
                      fontSize: 12),
                ],
              ),
            ),
            // Padding(padding: EdgeInsets.all(2)),
            Container(
              height: 150,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Image.asset("assets/layer3_3.jpeg"),
                  ),
                  Padding(padding: EdgeInsets.only(top: 6)),
                  CustomText(
                      text: 'From Rs 26,999',
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  CustomText(
                      text: 'Comfortable Cooling',
                      color: Colors.grey,
                      fontSize: 12),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }

  _buildSuggestionWidget() {
    return Container(
      height: 100,
      width: double.infinity,
      // color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            height: 100,
            child: Image.asset(
              "assets/wow0.jpeg",
              fit: BoxFit.fill,
            ),
          ),
          //Padding(padding: EdgeInsets.only(left: 1)),
          Container(
            width: 140,
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                    text: "Suggested for You",
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
                Padding(padding: EdgeInsets.only(top: 8)),
                CustomText(
                    text: "Based on Your Interest",
                    color: Colors.grey,
                    fontSize: 14),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 4)),

          ElevatedButton(
            onPressed: () {},
            child: CustomText(
              text: 'View All >',
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 10))
        ],
      ),
    );
  }

  _buildWOWwidget() {
    return Container(
      height: 370,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                height: 250,
                width: 120,
                color: Colors.blue,
                child: Image.asset(
                  "assets/wow.jpeg",
                  fit: BoxFit.fill,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 18)),
              CustomText(
                  text: 'WOW SKIN SCIENCE Sunscree...',
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
              Padding(padding: EdgeInsets.only(top: 8)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Rs 225",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
                  ),
                  Padding(padding: EdgeInsets.only(left: 8)),
                  Text(
                    "375",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontFamily: 'Roboto',
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 8)),
          SizedBox(
            width: 2,
            height: 450,
            child: Container(
              color: Colors.grey.shade100,
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 2)),
          Container(
            height: 370,
            width: 100,
            child: Column(
              children: [
                Container(
                  height: 120,
                  child: Image.asset(
                    "assets/wow1.jpeg",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                CustomText(
                    text: 'WOW SKIN SCI...',
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
                Padding(padding: EdgeInsets.only(top: 8)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Rs 250",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
                    ),
                    Padding(padding: EdgeInsets.only(left: 8)),
                    Text(
                      "399",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontFamily: 'Roboto',
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                SizedBox(
                  width: double.infinity,
                  height: 2,
                  child: Container(
                    color: Colors.grey.shade100,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Container(
                  height: 120,
                  width: 130,
                  child: Image.asset(
                    "assets/wow2.jpeg",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                CustomText(
                    text: 'WOW SKIN SCI...',
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
                Padding(padding: EdgeInsets.only(top: 8)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Rs 315",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
                    ),
                    Padding(padding: EdgeInsets.only(left: 8)),
                    Text(
                      "385",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontFamily: 'Roboto',
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }

  _buildBottomNavigationBar() {
    return BottomAppBar(
      elevation: 20,
      child: Container(
        margin: EdgeInsets.all(14),
        height: 45,
        width: 100,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(left: 20, right: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.local_police_rounded,
                  color: Colors.black54,
                ),
                Icon(
                  Icons.apps_rounded,
                  color: Colors.black54,
                ),
                Icon(
                  Icons.video_collection,
                  color: Colors.black54,
                ),
                Icon(
                  Icons.videogame_asset_rounded,
                  color: Colors.black54,
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 4)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    text: 'Shop',
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
                Padding(padding: EdgeInsets.only(left: 10)),
                CustomText(
                    text: 'SuperCoin',
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
                // Padding(padding: EdgeInsets.only(left: 30)),
                CustomText(
                    text: '        ',
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
                Padding(padding: EdgeInsets.only(left: 25)),
                CustomText(
                    text: 'Video',
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
                // Padding(padding: EdgeInsets.only(left: 5)),
                CustomText(
                    text: 'Game Zone',
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _buildDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
            color: Color(0xff0C73EB),
            height: 90,
            child: Row(
              children: [
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                ),
                CustomText(
                    text: 'Home',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                Padding(
                  padding: EdgeInsets.only(left: 100),
                ),
                Image.asset(
                  "assets/flipkart.png",
                  width: 85,
                ),
              ],
            ),
          ),
          ListTile(
            minLeadingWidth: 3,
            title: CustomText(text: "Flipkart Plus Zone"),
            leading: Icon(Icons.star_border),
          ),
          Divider(
            thickness: 1.6,
          ),
          ListTile(
            minLeadingWidth: 3,
            title: CustomText(text: "All Catagories"),
            leading: Icon(Icons.grid_view),
            onTap: _navigateToCatagoryPage,
          ),
          ListTile(
            minLeadingWidth: 3,
            title: CustomText(text: "More on Flipkart"),
            leading: Icon(Icons.blur_circular_sharp),
          ),
          Divider(
            thickness: 1.6,
          ),
          ListTile(
            minLeadingWidth: 3,
            title: CustomText(text: "Choose language"),
            leading: Icon(Icons.translate),
          ),
          Divider(
            thickness: 1.6,
          ),
          ListTile(
            minLeadingWidth: 3,
            title: CustomText(text: "Offer Zone"),
            leading: Icon(Icons.local_offer),
          ),
          ListTile(
            minLeadingWidth: 3,
            title: CustomText(text: "Sell on Flipkart"),
            leading: Icon(Icons.work),
          ),
          Divider(
            thickness: 1.6,
          ),
          ListTile(
            minLeadingWidth: 3,
            title: CustomText(text: "My Orders"),
            leading: Icon(Icons.local_mall),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (builder) => Orders()));
            },
          ),
          ListTile(
            minLeadingWidth: 3,
            title: CustomText(text: "My Coupons"),
            leading: Icon(Icons.local_activity_sharp),
          ),
          ListTile(
            minLeadingWidth: 3,
            title: CustomText(text: "My Cart"),
            leading: Icon(Icons.shopping_cart),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (builder) => Cart()));
            },
          ),
          ListTile(
            minLeadingWidth: 3,
            title: CustomText(text: "My Wishlist"),
            leading: Icon(Icons.favorite),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (builder) => Wishlist()));
            },
          ),
          ListTile(
            minLeadingWidth: 3,
            title: CustomText(text: "My Account"),
            leading: Icon(Icons.person),
          ),
          ListTile(
            minLeadingWidth: 3,
            title: CustomText(text: "My Notification"),
            leading: Icon(Icons.notifications),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (builder) => NotificationPage()));
            },
          ),
          ListTile(
            minLeadingWidth: 3,
            title: CustomText(text: "My Chats"),
            leading: Icon(Icons.message),
          ),
          Divider(
            thickness: 1.6,
          ),
          ListTile(
            minLeadingWidth: 3,
            title: CustomText(text: "Notification Preferences"),
          ),
          ListTile(
            minLeadingWidth: 3,
            title: CustomText(text: "Help Centre"),
          ),
          ListTile(
            minLeadingWidth: 3,
            title: CustomText(text: "Privacy Policy"),
          ),
          ListTile(
            minLeadingWidth: 3,
            title: CustomText(text: "Legal"),
          ),
        ],
      ),
    );
  }

  void _navigateToCatagoryPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (builder) => CatagoryPage()));
  }

  _buildSearchBar() {
    return Container(
      height: 60,
      color: Colors.blue,
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
        ),
        child: GestureDetector(
          child: ListTile(
            leading: Icon(Icons.search),
            horizontalTitleGap: 0,
            title: CustomText(
                text: 'Search for Products,Brands and More',
                color: Colors.grey),
            trailing: Icon(Icons.mic),
          ),
          onTap: (){},
        ),
      ),
    );
  }


}

class CustomText extends StatelessWidget {
  String text;
  String fontFamily;
  double fontSize;
  Color color;

  FontWeight fontWeight;

  CustomText(
      {@required this.text,
      this.fontFamily = 'Roboto',
      this.fontSize,
      this.color = Colors.black,
      this.fontWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        fontFamily: fontFamily,
      ),
    );
  }
}
