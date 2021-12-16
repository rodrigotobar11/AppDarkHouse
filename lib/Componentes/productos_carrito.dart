import 'package:flutter/material.dart';

class Productos_carrito extends StatefulWidget {
  const Productos_carrito({Key? key}) : super(key: key);

  @override
  _Productos_carritoState createState() => _Productos_carritoState();
}

class _Productos_carritoState extends State<Productos_carrito> {
  var Productos_en_carrito = [
    {
      "name": "Blazer Caqui",
      "picture": "img/blazer2.jpg",
      "price": 115,
      "size": "M",
      "color": "Caqui",
      "cantidad": 1
    },
    {
      "name": "Vestido Verano",
      "picture": "img/vestido.jpg",
      "price": 45,
      "size": "XS",
      "color": "Aqua",
      "cantidad": 1
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Productos_en_carrito.length,
        itemBuilder: (context, index) {
          return Producto_carrito_unico(
            carrito_prod_name: Productos_en_carrito[index]["name"],
            carrito_prod_color: Productos_en_carrito[index]["color"],
            carrito_prod_cantidad: Productos_en_carrito[index]["cantidad"],
            carrito_prod_size: Productos_en_carrito[index]["size"],
            carrito_prod_price: Productos_en_carrito[index]["price"],
            carrito_prod_picture: Productos_en_carrito[index]["picture"],
          );
        });
  }
}

class Producto_carrito_unico extends StatelessWidget {
  final carrito_prod_name;
  final carrito_prod_price;
  final carrito_prod_picture;
  final carrito_prod_size;
  final carrito_prod_color;
  final carrito_prod_cantidad;

  Producto_carrito_unico(
      {this.carrito_prod_name,
      this.carrito_prod_price,
      this.carrito_prod_picture,
      this.carrito_prod_size,
      this.carrito_prod_color,
      this.carrito_prod_cantidad});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          carrito_prod_picture,
          width: 80.0,
          height: 80.0,
        ),
        title: Text(carrito_prod_name),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                //Talla
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Talla:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    carrito_prod_size,
                    style: TextStyle(color: Colors.green),
                  ),
                ),

                //Color
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    carrito_prod_color,
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "\$${carrito_prod_price}",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
