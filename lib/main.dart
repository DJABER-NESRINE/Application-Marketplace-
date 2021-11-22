import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import'package:market_app/Categories/listedecategories.dart';
import 'package:market_app/listecomp/products.dart';
import "package:market_app/listecomp/panier.dart";


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover ,
      images:[
        AssetImage('images/4.jpg'),
        AssetImage('images/3.jpg'),
        AssetImage('images/1.jpg'),
        AssetImage('images/2.jpg'),
        AssetImage('images/I1.jpeg'),
        AssetImage('images/5.jpg'),

      ],
      autoplay: false,
      indicatorBgPadding: 2.0,
    ),
  );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: Text('MarketPlaceapp'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white,), onPressed: () {}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,),
              onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>new Panier()));
              })
        ],

      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Djaber Nesrine'),
              accountEmail: Text('djabern@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.green
              ),
              ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>new HomePage()));
              },
              child: ListTile(
                title: Text('Accueil'),
               leading:Icon(Icons.home, color: Colors.black) ,
              ),
            ) ,
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>new Panier()));
              },
              child: ListTile(
                title: Text('MES COMMANDES'),
                leading:Icon(Icons.shopping_basket, color: Colors.black),
              ),
            ) ,
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading:Icon(Icons.dashboard, color: Colors.black) ,
              ),
            ) ,
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('MON COMPTE'),
                leading:Icon(Icons.person, color: Colors.black) ,
              ),
            ) ,
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('LISTE DE FAVORIS'),
                leading:Icon(Icons.favorite, color: Colors.red) ,
              ),
            ) ,
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('PARAMETRE DU COMPTE'),
                leading:Icon(Icons.settings_applications, color: Colors.black) ,
              ),
            ) ,
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('+ INFO'),
                leading:Icon(Icons.live_help, color: Colors.black) ,
              ),
            ) ,
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,

          new Padding(padding: const EdgeInsets.all(6.0),
            child: new Text ('Categories'),),
          Liste_categories(),



          new Padding(padding: const EdgeInsets.all(12.0),
          child: new Text ('Produits'),),
          Container(
            height: 320.0,
            child: Products(),
          )

          //la list
          //listecomp(),
        ],
      ),
    );
  }
}
