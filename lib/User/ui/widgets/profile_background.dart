import 'package:flutter/material.dart';

class ProfileBackground extends StatelessWidget{
  
  @override
  
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: screenHeight*0.50,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFFB163F7),
                Color(0xFF440C75)
              ],
              begin: FractionalOffset(0.2,-0.1),
              end: FractionalOffset(1.0,1.0),
              stops: [0.0,0.8],
              tileMode: TileMode.clamp
          )
      ),
      child: FittedBox(
        fit: BoxFit.none,
        alignment: Alignment(1, -1.5),
        child: Container(
          width: screenWidth,
          height: screenHeight,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.050980392156862744),
            borderRadius: BorderRadius.circular(screenHeight/2)

          ),
        ),
      ),
    );
  }
}