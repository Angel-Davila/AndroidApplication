import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/animation.dart';

class GradientButton extends StatelessWidget{

  String buttonText = "";
  GradientButton(this.buttonText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(content: Text("ATENTION"))
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,
        ),
        height: 50,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
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
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                fontFamily: "SawarabiGothic",
                fontSize: 18.0,
                color: Colors.white
              ),
            ),
          )
      ),
    );
  }
}