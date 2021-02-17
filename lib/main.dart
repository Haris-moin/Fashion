import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shopping_app/components/Horizontal_ListView.dart';
import 'package:shopping_app/components/products.dart';
import 'package:shopping_app/pages/cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/back.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text('Traders'),
          elevation: 0.1,
          backgroundColor: Colors.redAccent,
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.search), onPressed: () {}),
            new IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context).push(
                      new MaterialPageRoute(builder: (context) => (Cart())));
                }),
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: [
              new UserAccountsDrawerHeader(
                accountName: Text('Haris Moin'),
                accountEmail: Text('Harismoin@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.white12,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Home'),
                    leading: Icon(
                      Icons.home,
                      color: Colors.red,
                    ),
                  )),
              InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('My account'),
                    leading: Icon(
                      Icons.person,
                      color: Colors.red,
                    ),
                  )),
              InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('My order'),
                    leading: Icon(
                      Icons.shopping_basket,
                      color: Colors.red,
                    ),
                  )),
              InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Shopping cart'),
                    leading: Icon(
                      Icons.shopping_cart,
                      color: Colors.red,
                    ),
                  )),
              InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Favourite'),
                    leading: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  )),
              InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Settings'),
                    leading: Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                  )),
              InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('About'),
                    leading: Icon(
                      Icons.help,
                      color: Colors.blue,
                    ),
                  )),
            ],
          ),
        ),
        body: new Column(
          children: [
            // image_carousel begins here
            image_carousel,
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Container(
                  padding: EdgeInsets.all(5.0),
                  alignment: Alignment.centerLeft,
                  child: Text('Categories')),
            ),

            //Horizontal list view begins here
            Horizontal_List_view(),

            Padding(
              padding: EdgeInsets.all(5.0),
              child: Container(
                  padding: EdgeInsets.all(5.0),
                  alignment: Alignment.centerLeft,
                  child: Text('Recent Products')),
            ),
            //grid view begins here
            Flexible(
              child: Products(),
            ),
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
