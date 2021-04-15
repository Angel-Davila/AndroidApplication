import 'package:flutter/material.dart';
import 'package:mvc_application/User/ui/widgets/profile_background.dart';


class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        ProfileBackground(

        )
      ],
    );
  }
}