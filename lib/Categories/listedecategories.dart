import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';

class Liste_categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Categories(
            image_location: 'images/images_categories/armchair.png',
            image_caption:'fauteille',
          ),
          Categories(
            image_location: 'images/images_categories/chair.jpg',
            image_caption:'chaise',
          ),
          Categories(
            image_location: 'images/images_categories/potted-plant.jpg',
            image_caption:'Plante',
          ),
          Categories(
            image_location: 'images/images_categories/lit.jpg',
            image_caption:'lit',
          ),
          Categories(
            image_location: 'images/images_categories/400.jpg',
            image_caption:'arrmoire',
          ),
          Categories(
            image_location: 'images/images_categories/401.jpg',
            image_caption:'chambre',
          ),
          Categories(
            image_location: 'images/images_categories/402.jpg',
            image_caption:'Meuble',
          ),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Categories({
    this.image_location,
    this.image_caption,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 80.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 80.0,
              height: 50.0,
            ),


            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            ),

          ),
        ),
      ),
    );
  }
}
