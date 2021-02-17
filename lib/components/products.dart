import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
    {
      "name": "Jeans",
      "picture": "images/products/pants2.jpeg",
      "old_price": '3800',
      "Price": '3400',
    },
    {
      "name": "Black dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": '3400',
      "Price": '3100',
    },
    {
      "name": "Skit",
      "picture": "images/products/skt1.jpeg",
      "old_price": '2800',
      "Price": '2500',
    },
    {
      "name": "Coat",
      "picture": "images/products/blazer2.jpeg",
      "old_price": '3400',
      "Price": '3100',
    },
    {
      "name": "Skit",
      "picture": "images/products/skt2.jpeg",
      "old_price": '2800',
      "Price": '2500',
    },
    {
      "name": "Jeans",
      "picture": "images/products/pants2.jpeg",
      "old_price": '4000',
      "Price": '3500',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: Product_list.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(4.0),
          child: Signle_product(
            product_name: Product_list[index]["name"],
            product_picture: Product_list[index]["picture"],
            product_old_price: Product_list[index]["old_price"],
            product_price: Product_list[index]["Price"],
          ),
        );
      },
    );
  }
}

class Signle_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  const Signle_product(
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
        tag: Text('hero1'),
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
