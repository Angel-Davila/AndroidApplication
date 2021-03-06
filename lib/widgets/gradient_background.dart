import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget{

  String title = "Welcome";
  double backgroundHeight;

  GradientBackground(this.title, this.backgroundHeight);

  @override
  Widget build(BuildContext context) {

    final background = Container(
      height: backgroundHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFB163F7),
            Color(0xFF440C75),
          ],
          begin: FractionalOffset(0.2,-0.1),
          end: FractionalOffset(1.0,1.0),
          stops: [0.0,0.8],
          tileMode: TileMode.clamp
        )
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "SawarabiGothic",
          fontWeight: FontWeight.bold
        ),
      ),
      alignment: Alignment(-0.8, -0.4),
    );
    return background;
  }


}