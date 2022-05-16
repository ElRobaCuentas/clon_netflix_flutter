import 'package:flutter/material.dart';

class NavBarSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset('assets/imgs/logo_netflix2.png', width: 50.0, height: 50.0),
        Text(
          'Programas',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        Text(
          'Peliculas',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        Text(
          'Mi Lista',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
      ],
    );
  }
}

class AnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
