import 'package:flutter/material.dart';
class Detail_prod extends StatefulWidget {
  final product_detail_nom;
  final product_detail_photo;
  final product_detail_price;

  Detail_prod({
    this.product_detail_nom,
    this.product_detail_photo,
    this.product_detail_price,


});

  @override
  _Detail_prodState createState() => _Detail_prodState();
}

class _Detail_prodState extends State<Detail_prod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: Text('MarketPlaceapp'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white,), onPressed: () {}),

        ],

      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height:450.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_photo),
              ),
            footer: new Container(
              color: Colors.black12,
              child: ListTile(
                leading: new Text(widget.product_detail_nom,style: TextStyle(fontWeight: FontWeight.bold)),
                title: new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("\$${widget.product_detail_price}",style: TextStyle(color: Colors.green, fontWeight: FontWeight.w800),),

                    )
                  ],
                )
              ),
            ),),
            ),
          Row(
            children:<Widget>[
              //boutton de couleur

              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context, builder: (context){
                    return new AlertDialog(
                      title: new Text("couleur"),
                      content: new Text(" Choisissez la couleur"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("arreter"),)
                      ],
                    );
                  });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("Couleur")
                      ),
                      Expanded(
                          child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),


              // boutton de quantité
              Expanded(
                child: MaterialButton(onPressed: (){

                    showDialog(context: context, builder: (context){
                      return new AlertDialog(
                        title: new Text("Quantité"),
                        content: new Text(" Choisissez la Quantité"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                            child: new Text("arreter"),)
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("Quantité")
                      ),
                      Expanded(
                          child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),

                ),

                ),
            ],
          ),


          Row(
            children:<Widget>[
              //boutton acheter
              Expanded(
                child: MaterialButton(onPressed: (){},
                  color: Colors.green,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("ajouter au panier")

                ),

              ),
               new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.green), onPressed: (){}),
               new IconButton(icon: Icon(Icons.favorite_border, color: Colors.green), onPressed: (){}),

            ],
          ),
         Divider(),
         new ListTile(
           title: new Text("Description :"),
           subtitle: new Text("Chaise isolé sur fond blanc.vue avant du canapé d'appoint remourré à oreilles.Fauteil captionné classique avec revetementen velours  avec pieds en bois.Mobilier d'intérieur avec accoudoirs. "),

         ),
          Divider(),
          Padding(padding: const EdgeInsets.all(10.0),
          child: new Text("Produits_Similaire"),),
          //produits similaire
          Container(
            height: 400.0,
            child: Produits_Similaire(),
          ),

        ],
      ),
    );
  }
}
class Produits_Similaire extends StatefulWidget {
  @override
  _Produits_SimilaireState createState() => _Produits_SimilaireState();
}

class _Produits_SimilaireState extends State<Produits_Similaire> {

var products_list = [
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
return produits_Similaire_Prod(
nom_produit: products_list[index]['name'],
photo_produit: products_list[index]['picture'],
price_produit: products_list[index]['price'],
);

}
);

}
}
class produits_Similaire_Prod extends StatelessWidget {
  final nom_produit;
  final photo_produit;
  final price_produit;
  produits_Similaire_Prod({
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


