import 'package:flutter/material.dart';

class Productos extends StatefulWidget {
  const Productos({Key? key}) : super(key: key);

  @override
  _ProductosState createState() => _ProductosState();
}

class _ProductosState extends State<Productos> {
  var productos_list = [
    {
      "name": "Blazer",
      "picture": "img/blazer.jpg",
      "price": 120,
    },
    {
      "name": "Camisa Azul",
      "picture": "img/ropa.jpg",
      "price": 120,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productos_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_pro(
            product_name: productos_list[index]['name'],
            product_picture: productos_list[index]['picture'],
            product_price: productos_list[index]['price'],
          );
        });
  }
}

class Single_pro extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_price;

  Single_pro({
    this.product_name,
    this.product_picture,
    this.product_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: product_name,
          child: Material(
            child: InkWell(
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Text(
                        product_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$product_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    product_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
