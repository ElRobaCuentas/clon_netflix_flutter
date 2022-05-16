import 'package:flutter/material.dart';

class ItemRedondedo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110.0),
                border: Border.all(
                  color: Colors.yellow,
                  width: 2.0,
                ),
              ),
              child: ClipOval(
                child: Image.network(
                  'https://imagenes.t13.cl/images/original/2019/04/1554818635-endgame-2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Image.asset(
              'assets/imgs/avengers.png',
              width: 80.0,
            )
          ],
        ),
        SizedBox(
          width: 10.0,
        )
      ],
    );
  }
}
