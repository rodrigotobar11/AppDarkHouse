import 'package:apptienda/Componentes/menu_horizontal.dart';
import 'package:apptienda/Componentes/productos.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = SizedBox(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: const Duration(milliseconds: 1000),
        images: [
          AssetImage('img/p1.jpg'),
          AssetImage('img/p2.jpg'),
          AssetImage('img/p3.jpg'),
          AssetImage('img/p4.jpg'),
        ],
        dotSize: 4.0,
        indicatorBgPadding: 8.0,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('DARKHOUSE'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //header
            UserAccountsDrawerHeader(
              accountName: Text('Carlos Henriquez'),
              accountEmail: Text('carlosh98@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Image.asset('img/user.jpg'),
                ),
              ),
              decoration: BoxDecoration(color: Colors.black),
            ),
            //body
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(Icons.home),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Mi Cuenta'),
                  leading: Icon(Icons.person),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Compras'),
                  leading: Icon(Icons.shopping_basket),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Categorias'),
                  leading: Icon(Icons.category),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Favoritos'),
                  leading: Icon(Icons.favorite),
                )),

            Divider(),

            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Acerca de'),
                  leading: Icon(Icons.help),
                ))
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          imageCarousel,
          Padding(padding: const EdgeInsets.all(8.0)),
          MenuHorizontal(),
          Padding(padding: const EdgeInsets.all(20.0)),
          Container(
            height: 320.0,
            child: Productos(),
          )
        ],
      ),
    );
  }
}
