import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GenericButton extends StatefulWidget{

  final String buttonText;
  final VoidCallback onPressed;
  double width = 0.0;
  double height = 0.0;

  GenericButton({Key key, @required this.buttonText, @required this.onPressed, this.width, this.height});

  @override
  State<StatefulWidget> createState() {

    return _GenericButton();
  }
}

class _GenericButton extends State<GenericButton>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: widget.onPressed,
          child: Container(
            margin: EdgeInsets.only(
                top: 30.0,
                left: 20.0,
                right: 20.0,
              ),
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                  colors: [
                    Color(0xFFa7ff84),
                    Color(0xFF1cbb78),
                  ],
                  begin: FractionalOffset(0.2,-0.1),
                  end: FractionalOffset(1.0,1.0),
                  stops: [0.0,0.7],
                  tileMode: TileMode.clamp
              )
            ),
            child: Center(
              child: Text(
                widget.buttonText,
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