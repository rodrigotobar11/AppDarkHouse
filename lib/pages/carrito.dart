import 'package:apptienda/Componentes/productos_carrito.dart';
import 'package:flutter/material.dart';

class Carrito extends StatefulWidget {
  const Carrito({Key? key}) : super(key: key);

  @override
  _CarritoState createState() => _CarritoState();
}

class _CarritoState extends State<Carrito> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('BLACKHOUSE'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: new Productos_carrito(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(children: <Widget>[
          Expanded(
            child: ListTile(
              title: Text("Total:"),
              subtitle: Text("\$160"),
            ),
          ),
          Expanded(
            child: new MaterialButton(
                onPressed: () {},
                child: Text("Verificar"),
                color: Colors.blueGrey),
          )
        ]),
      ),
    );
  }
}
