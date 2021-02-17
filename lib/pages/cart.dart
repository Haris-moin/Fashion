import 'package:flutter/material.dart';
import 'package:shopping_app/components/cart_products.dart';
class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Cart_Products(),
      bottomNavigationBar: Container(
        child: Row(
          children: [
            Expanded(
                child: ListTile(
              title: Text(
                'Total:',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                '     2350',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            )),
            Expanded(
                child: MaterialButton(
              onPressed: () {},
              child: Text(
                'check out',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
            ))
          ],
        ),
      ),
    );
  }
}
