import 'package:flutter/material.dart';
import 'review.dart';

// ignore: must_be_immutable
class ReviewList extends StatelessWidget{
  String pathImage1="https://media-exp1.licdn.com/dms/image/C4E03AQFkc1mOBXKzgQ/profile-displayphoto-shrink_200_200/0/1517495381989?e=1619049600&v=beta&t=AT7s5UIZvl2bqaB-2j74NfF_lejXSioatVK2Ux8CahM";
  String name1="Isabel Bellido";
  String details1="5 Review-8 Photos";
  String comment1="Muy buen lugar para pasar el rato en familia";

  String pathImage2="https://upload.wikimedia.org/wikipedia/commons/b/ba/Joaqu%C3%ADn_S%C3%A1nchez_Rodr%C3%ADguez_VCF_%28cropped%29.jpg";
  String name2="Nicolasa Tejedor";
  String details2="150 Reviews-200 Photos";
  String comment2="Muy bellas las damas";

  String pathImage3="https://entertothematrix.files.wordpress.com/2012/11/microbusero3.jpg";
  String name3="Ali Chacon";
  String details3="1 Reviews-5 Photos";
  String comment3="Mi esposa me corrio de la casa";

  String pathImage4="https://i.pinimg.com/736x/e9/a7/77/e9a7779242b728fd46db96910c6b5d40.jpg";
  String name4="Reyes Carrera";
  String details4="212 Reviews-100 Photos";
  String comment4="Me cobraron 100 pesos por una chela,\npero excelente ambiente";

  String pathImage5="https://scontent.fcuu3-1.fna.fbcdn.net/v/t1.0-9/147311548_3993672093999303_1283311493314040904_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeEK6PDX8Se1iUxLXmE9-um-JPI_HaQDjgIk8j8dpAOOAvpR1ZVcGPBupCVlL9kyBXm0t11th5RnztolKoNOq78h&_nc_ohc=L6se2oYmouYAX-4lFbL&_nc_ht=scontent.fcuu3-1.fna&oh=87e8159ad7f90f232bde01eb18efec59&oe=6073113D";
  String name5="Jofeque_69420";
  String details5="69 Reviews-420 Photos";
  String comment5="Me pusieron bien recio las chamacas :D";



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 20.0,
            left: 20.0,
          ),
          child: Text(
            "All reviews",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black45,
              fontFamily: "SawarabiGothic"
            ),
          ),
        ),
        Review(pathImage1, name1, details1, comment1),
        Review(pathImage2, name2, details2, comment2),
        Review(pathImage3, name3, details3, comment3),
        Review(pathImage4, name4, details4, comment4),
        Review(pathImage5, name5, details5, comment5)
      ],
    );
  }

}