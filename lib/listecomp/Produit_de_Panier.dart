import 'package:flutter/material.dart';
class Produit_de_Panier extends StatefulWidget {
  @override
  _Produit_de_PanierState createState() => _Produit_de_PanierState();
}

class _Produit_de_PanierState extends State<Produit_de_Panier> {
  var Mes_COMMANDES =[
    {
      "name": "fauteil en tissu",
      "picture": "images/products/BB2.jpg",
      "price": 100,
      "color":"Blanc",
      "quantité":2,
    },
    {
      "name": "Lit",
      "picture": "images/products/IMG_20210225_224456_027.jpg",
      "price": 300,
      "color":"Vert",
      "quantité":1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Mes_COMMANDES.length,
        itemBuilder: (context, index ){
          return Prod_panier(
            panierProd_nom: Mes_COMMANDES[index]["name"],
            panierProd_photo: Mes_COMMANDES[index]["picture"],
            panierProd_price: Mes_COMMANDES[index]["price"],
            panierProd_color: Mes_COMMANDES[index]["color"],
            panierProd_quantit: Mes_COMMANDES[index]["quantité"],
          );


        });
  }
}

class Prod_panier extends StatelessWidget {
  final panierProd_nom;
  final panierProd_photo;
  final panierProd_price;
  final panierProd_color;
  final panierProd_quantit;
  Prod_panier({
    this.panierProd_nom,
    this.panierProd_photo,
    this.panierProd_price,
    this.panierProd_color,
    this.panierProd_quantit,

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(panierProd_photo,width: 40.0,height: 80.0,),
        //le grand titre
        title: new Text(panierProd_nom),
        //les sous titres
        subtitle: new Column(
          children:<Widget>[
            new Row(
                children:<Widget>[
                  // pour la couleur de produit
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: new Text("color:"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text(panierProd_color, style: TextStyle(color: Colors.green),),
                  ),



                  // pour la quantité de produit
                ]
            ),
            new Container(
              alignment: Alignment.topLeft,
              child:new Text("\$${panierProd_price}",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold,color: Colors.green),),
            ),
          ],
        ),



      ),
    );

  }
}

