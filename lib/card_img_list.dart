import 'package:flutter/material.dart';
import 'card_img.dart';

class CardImageList extends StatelessWidget{



  @override
  Widget build(BuildContext context) {

    return Container(
      height: 300,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("https://imparcialoaxaca.mx/wp-content/uploads/2020/07/dorsia-table-dance-lap-dance-club-antwerpen-belgium-5.jpg"),
          CardImage("https://laopinion.com/wp-content/uploads/sites/3/2019/11/nace-bebe-pista-de-baile.jpg?quality=80&strip=all&w=1200"),
          CardImage("http://cdn5.upsocl.com/wp-content/uploads/2017/10/11-17.jpg"),
          CardImage("https://gcdn.emol.cl/internet/files/2019/10/club-nocturno.jpg"),
          CardImage("https://www.infobae.com/new-resizer/ZWhdRfb_K6w9Cl8xGhc6H6cWFV4=/420x236/filters:format(jpg):quality(85)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2017/01/16073016/irotie-1024x575.jpg"),
          CardImage("https://imagenes.20minutos.es/files/article_amp/uploads/2020/06/07/club-nocturno-en-japon.jpeg"),


        ],
      ),
    );

  }

}