import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../widgets/description_place.dart';
import '../widgets/review_list.dart';
import '../../../widgets/gradient_background.dart';
import '../widgets/card_img_list.dart';

class Home extends StatelessWidget {

  String dummieText="An exciting and fun place to spend your salary";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("Bombay", 4.5, dummieText),
            ReviewList()
          ],
        ),
        GradientBackground("Welcome", 300),
        CardImageList(),
      ],
    );
  }
}