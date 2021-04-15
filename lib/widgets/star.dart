import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Star extends StatelessWidget{

  double topDistance;
  var size;


  Star([this.topDistance, this.size]);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: topDistance +3.0,
        left: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2c611),
        size: size,
      ),
    );
  }

}