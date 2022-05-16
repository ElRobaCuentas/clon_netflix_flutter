import 'package:flutter/material.dart';

class itemImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://i.pinimg.com/originals/2c/a1/04/2ca1044255bb74161c0cc5119d775a3d.jpg',
      width: 100.0,
      fit: BoxFit.cover,
    );
  }
}
