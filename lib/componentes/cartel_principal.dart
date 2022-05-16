import 'package:clone_netflix/componentes/nav_var_superior.dart';
import 'package:flutter/material.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.cabecera(),
        this.infoSerie(),
        this.botonera(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: [
        Image.network(
          'https://media.orm.es/img/.cache/audio/a/D/UmZCMXdRV0tKNEpaTWR1eGxpeW1nQlJVbnRENmlpME5DOWhjLzh4R1F0Yz0=873x490-c.jpg',
          height: 280,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 280.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.black38, Colors.black])),
        ),
        SafeArea(
          // SafeArea para que el navbar se ajuste un poco hacia abajo
          child: NavBarSuperior(),
        ),
      ],
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Telenovelesco',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          'Susppenso Insostenible',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          'De Suspenso',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          'Adolescentes',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
      ],
    );
  }

  Widget botonera() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: [
              Icon(Icons.check, color: Colors.white),
              SizedBox(height: 3.0),
              Text(
                'Mi Lista',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
              )
            ],
          ),
          FlatButton.icon(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            label: Text('Reproducir'),
          ),
          Column(
            children: [
              Icon(Icons.info_outline, color: Colors.white),
              SizedBox(height: 3.0),
              Text(
                'Información',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
