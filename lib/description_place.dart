import 'package:mvc_application/star.dart';
import 'package:flutter/material.dart';
import 'star.dart';
import 'half_star.dart';
import 'star_border.dart';

class DescriptionPlace extends StatelessWidget{

  String descriptionText="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque euismod tellus ut nisl aliquam convallis. Nulla facilisi. Quisque eu placerat lorem. Nulla ullamcorper vehicula dolor vitae ornare. Sed gravida metus at lacus pharetra semper a quis ex. Maecenas vel venenatis lorem. In porta interdum purus at dapibus. Suspendisse in mi aliquam elit tincidunt vestibulum. Etiam tempus, tortor ut egestas blandit, justo erat ullamcorper est, vel posuere ipsum leo at nisl.";
  String name ="Lorem";
  double topDistance=360.0;
  double stars;

  DescriptionPlace(this.name, this.stars, this.descriptionText);


  @override
  Widget build(BuildContext context) {

    final namePlace=Container(
      margin: EdgeInsets.only(
        top:  topDistance,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        name,
        style: TextStyle(
            fontFamily: "SawarabiGothic",
            fontSize: 30.0,
            fontWeight: FontWeight.w800,
            color: Color(0xFF56575a)
        ),
      ),
    );

    final description=Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        descriptionText,
        style: TextStyle(
          fontFamily: "SawarabiGothic",
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          color: Color(0xFF56575a)
        ),
      ),
    );

    final tittleStars=Row(
      children: [
        namePlace,
        Row(
          children: [
            Star(topDistance),
            Star(topDistance),
            Star(topDistance),
            StarHalf(topDistance),
            StarBorder(topDistance),
          ],
        ),
      ],
    );

    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        tittleStars,
        description,
      ],
    );
  }

}