import"package:flutter/material.dart";
import 'package:market_app/listecomp/Produit_de_Panier.dart';
class Panier extends StatefulWidget {
  @override
  _PanierState createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: new AppBar(
      elevation: 0.0,
      backgroundColor: Colors.green,
      title: Text('Panier'),
      actions: <Widget>[
        new IconButton(
            icon: Icon(Icons.search, color: Colors.white,), onPressed: () {}),

      ],

    ),

      body: new Produit_de_Panier(),
      bottomNavigationBar: new Container(
          color: Colors.white,
          child: Row(
            children:<Widget>[
              Expanded(child: ListTile(
                  title: new Text("La somme Totale est:"),
                  subtitle: new Text("\$400")
              )),
              Expanded(child: new MaterialButton(onPressed: (){},
                child: new Text("confirmé "),
                color: Colors.green,
              ),
              )



            ],
          )
      ),
    );
  }
}
