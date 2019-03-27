import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '小可爱 李哲',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 27.0,
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
          )
        ),
    );
  }
}