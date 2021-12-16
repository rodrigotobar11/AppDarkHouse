import 'package:flutter/material.dart';

class MenuHorizontal extends StatelessWidget {
  const MenuHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
        Categoria(
          image_location: 'img/h.png',
          image_caption: 'Hombre',
        ),
        Categoria(
          image_location: 'img/m.png',
          image_caption: 'Mujer',
        ),
      ]),
    );
  }
}

class Categoria extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Categoria({required this.image_location, required this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 165.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            ),
          ),
        ),
      ),
    );
  }
}
