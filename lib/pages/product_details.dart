import 'package:flutter/material.dart';

import '../main.dart';
import 'cart.dart';

class Product_details extends StatefulWidget {
  final product_details_name;
  final product_details_price;
  final product_details_picture;
  final product_details_old_price;

  const Product_details(
      {Key key,
      this.product_details_name,
      this.product_details_price,
      this.product_details_picture,
      this.product_details_old_price})
      : super(key: key);

  @override
  _Product_detailsState createState() => _Product_detailsState();
}

class _Product_detailsState extends State<Product_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context) => (MyHomePage())));
            },
            child: Text('Traders')),
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                {
                  Navigator.of(context).push(
                      new MaterialPageRoute(builder: (context) => (Cart())));
                }
              }),
        ],
      ),
      body: new ListView(
        children: [
          Container(
            height: 400.0,
            child: GridTile(
              footer: Container(
                height: 50.0,
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_details_name + '  ',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.product_details_old_price,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              letterSpacing: 0.1,
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        'Rs ' + widget.product_details_price,
                        style: TextStyle(
                          letterSpacing: 0.4,
                          color: Colors.red,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              child: Image.asset(
                widget.product_details_picture,
                fit: BoxFit.fill,
              ),
            ),
          ),

          // First Button
          Row(
            children: [
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Size'),
                          content: Text('Choose size'),
                          actions: [
                            MaterialButton(
                                child: Text('close'),
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                })
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(
                      child: Text('Size'),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Size'),
                          content: Text('Choose size'),
                          actions: [
                            MaterialButton(
                                child: Text('close'),
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                })
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(
                      child: Text('Color'),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Size'),
                          content: Text('Choose size'),
                          actions: [
                            MaterialButton(
                                child: Text('close'),
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                })
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(
                      child: Text('Qantity'),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ))
            ],
          ),

          // Second Button
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text('Buy now'),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            ],
          ),

          Padding(padding: EdgeInsets.all(2.0)),
          Divider(),
          ListTile(
            title: Text(
              'Product Details',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              ' simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
            ),
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product Name:',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.product_details_name),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 10.0, 10.0, 10.0),
                child: Text(
                  'Product Brand:',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('A&H Brand'),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product Condition:',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('New'),
              )
            ],
          ),
          Divider(),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Similar Poducts",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Divider(),
          Container(
            height: 360.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var Product_list = [
    {
      "name": "Coat",
      "picture": "images/products/blazer1.jpeg",
      "old_price": '4800',
      "Price": '4300',
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": '3400',
      "Price": '3100',
    },
    {
      "name": "Hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": '1800',
      "Price": '1300',
    },
    {
      "name": "Hills",
      "picture": "images/products/hills2.jpeg",
      "old_price": '2400',
      "Price": '2000',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: Product_list.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Similar_Signle_product(
          product_name: Product_list[index]["name"],
          product_picture: Product_list[index]["picture"],
          product_old_price: Product_list[index]["old_price"],
          product_price: Product_list[index]["Price"],
        );
      },
    );
  }
}

class Similar_Signle_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  const Similar_Signle_product(
      {Key key,
      this.product_name,
      this.product_picture,
      this.product_old_price,
      this.product_price})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text('hero2'),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => Product_details(
                      product_details_name: product_name,
                      product_details_price: product_price,
                      product_details_picture: product_picture,
                      product_details_old_price: product_old_price,
                    ))),
            child: GridTile(
              footer: Container(
                padding: EdgeInsets.all(2.0),
                color: Colors.white70,
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      "  " + product_name,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    )),
                    Text(
                      product_price,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
              child: Image.asset(
                product_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
