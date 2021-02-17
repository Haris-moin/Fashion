import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart_Products extends StatefulWidget {
  @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {
  var Products_on_cart = [
    {
      "name": "Jeans",
      "picture": "images/products/pants2.jpeg",
      "Price": 3400,
      "size": "M",
      "color": "blue",
      "Quantity": 1,
    },
    {
      "name": "Black dress",
      "picture": "images/products/dress2.jpeg",
      "Price": 3100,
      "size": "S",
      "color": "black",
      "Quantity": 1,
    },
    {
      "name": "Coat",
      "picture": "images/products/blazer1.jpeg",
      "Price": 3100,
      "size": "S",
      "color": "black",
      "Quantity": 1,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "Price": 3100,
      "size": "M",
      "color": "Red",
      "Quantity": 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products_on_cart.length,
        itemBuilder: (context, index) {
          return Single_Cart_Product(
            cart_prod_name: Products_on_cart[index]["name"],
            cart_prod_picture: Products_on_cart[index]["picture"],
            cart_prod_price: Products_on_cart[index]["Price"],
            cart_prod_color: Products_on_cart[index]["color"],
            cart_prod_quantiy: Products_on_cart[index]["Quantity"],
            cart_prod_size: Products_on_cart[index]["size"],
          );
        });
  }
}

class Single_Cart_Product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_quantiy;

  const Single_Cart_Product(
      {Key key,
      this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_color,
      this.cart_prod_quantiy})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        title: Text(
          cart_prod_name,
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        leading: Container(
          child: Image.asset(
            cart_prod_picture,
            width: 80.0,
            height: 80.0,
          ),
        ),
        subtitle: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    cart_prod_size,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 8.0),
                  child: Text("Color:"),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    cart_prod_color,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'RS ${cart_prod_price}',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),
              ),
            ),
          ],
        ),
        trailing: Text(
          '${cart_prod_quantiy}',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
