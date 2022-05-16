import 'package:clone_netflix/componentes/cartel_principal.dart';
import 'package:clone_netflix/componentes/item_img.dart';
import 'package:clone_netflix/componentes/item_redondeado.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CartelPrincipal(),
          this.listaHorizontal('Primera Lista', ItemRedondedo(), 9),
          this.listaHorizontal('Segunda Lista', itemImg(), 10),
          itemImg(),
        ],
      ),
    );
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 6.0),
          child: Text(
            titulo,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        ),
      ],
    );
  }
}
