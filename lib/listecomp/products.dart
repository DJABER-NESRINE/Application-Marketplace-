import 'package:flutter/material.dart';
import 'package:market_app/contenu/detail.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var products_list = [
    {
      "name": "fauteil en tissu",
      "picture": "images/products/BB2.jpg",
      "price": 100,
    },
    {
      "name": "fauteil velour",
      "picture": "images/products/CC2.jpg",
      "price": 150,
    },
    {
      "name": "fauteil scandi",
      "picture": "images/products/MM2.jpg",
      "price": 30,
    },
    {
      "name": "fauteil salon",
      "picture": "images/products/PP2.jpg",
      "price": 10,
    },
    {
      "name": "fauteil salon",
      "picture": "images/products/WW2.jpg",
      "price": 60,
    },
    {
      "name": "Lit",
      "picture": "images/products/IMG_20210225_224350_065.jpg",
      "price": 33,
    },
    {
      "name": "fauteil  en velour",
      "picture": "images/products/AA.jpg",
      "price": 70,
    },
    {
      "name": "Plante",
      "picture": "images/products/IMG_20210225_224359_780.jpg",
      "price": 900,
    },
    {
      "name": "fauteil beige",
      "picture": "images/products/LL2.jpg",
      "price": 900,
    },
    {
      "name": "fauteil en tissu",
      "picture": "images/products/FF2.jpg",
      "price": 900,
    },
    {
      "name": "fauteil en tissu",
      "picture": "images/products/T2.jpg",
      "price": 300,
    },
    {
      "name": "Lit",
      "picture": "images/products/IMG_20210225_224456_027.jpg",
      "price": 300,
    },

  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: products_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
          return Prod(
            nom_produit: products_list[index]['name'],
            photo_produit: products_list[index]['picture'],
            price_produit: products_list[index]['price'],
          );

        }
    );

  }
}

class Prod extends StatelessWidget {
  final nom_produit;
  final photo_produit;
  final price_produit;
  Prod({
  this.nom_produit,
  this.photo_produit,
  this.price_produit,
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: nom_produit,
          child: Material(
            child: InkWell(
              onTap: ()=>
                Navigator.of(context).push(
                 new MaterialPageRoute(builder: (context) => new Detail_prod(
                   product_detail_nom: nom_produit,
                   product_detail_photo: photo_produit,
                   product_detail_price: price_produit,

                 ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.black12,
                    child: ListTile(
                      leading:  Text(nom_produit, style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text("\$$price_produit ", style: TextStyle(color: Colors.green, fontWeight: FontWeight.w800),
                      ),

                    ),
                  ),
                  child: Image.asset(photo_produit,
                      fit: BoxFit.cover,)),
            ),
          )),
    );


  }
}

