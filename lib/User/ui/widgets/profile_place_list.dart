import 'package:flutter/material.dart';
import 'profile_place.dart';
import 'package:mvc_application/Place/model/place.dart';

//ignore: must_be_inmutable
class ProfilePlaceList extends StatelessWidget{

  Place place1 = Place("Denmark", "Denmark is a Scandinavian country", "Beautiful country", "200,000");
  String placeImg = "https://e00-expansion.uecdn.es/assets/multimedia/imagenes/2018/07/19/15320031903454.jpg";

  Place place2 = Place("Hyrule Field", "Hyrule Field is a location in LoZ.", "Dangerous yelm", "4,550,000");
  String placeImg2 = "https://3dwarehouse.sketchup.com/warehouse/v1.0/publiccontent/d73c2fc3-bf5c-4b20-9832-a56fa43578a5";

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(
        top: screenHeight*0.50,
        bottom: 10,
        left: 20,
        right: 20
      ),
      child: Column(
        children: [
          ProfilePlace(placeImg, place1),
          ProfilePlace(placeImg2, place2)

        ],
    )
    );
  }
}