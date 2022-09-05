import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wedding_planner/model.dart';

class Acceuil extends StatefulWidget {
  const Acceuil({Key? key}) : super(key: key);

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green,
    ),
    body: ListView(
      // shrinkWrap: true,
      children: [
        // SizedBox(height: 10,),
        Container(
          child: MySlider(),
        ),
        Menu()
      ]
    ),
    );
  }

  Widget Menu1(){
    return Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){},
        splashColor: Colors.green,
        child: Center(
          child:Column(
            mainAxisSize:MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                "images/Eurpean.jpg",  width: 70,
                height: 70,
              ),
              Text("Carte d'invitation", style: new TextStyle(fontSize: 17.0),)
            ],
          )   
        ),
      ),
    )
            // MyMenu("Carte d'invitation", "images/Eurpean.jpg"),
            // MyMenu("Carte d'invitation", "images/Eurpean.jpg"),
            // MyMenu("Carte d'invitation", "images/Eurpean.jpg"),
            // MyMenu("Carte d'invitation", "images/Eurpean.jpg"),
            // MyMenu("Carte d'invitation", "images/Eurpean.jpg"),
            // MyMenu("Carte d'invitation", "images/Eurpean.jpg"),
            // MyMenu("Carte d'invitation", "images/Eurpean.jpg"),
            // MyMenu("Carte d'invitation", "images/Eurpean.jpg"),
            // MyMenu("Carte d'invitation", "images/Eurpean.jpg"),
          ],
        ),
    );
  }

   Widget MyMenu(String title, String image) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){},
        splashColor: Colors.green,
        child: Center(
          child:Column(
            mainAxisSize:MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                image,  width: 70,
                height: 70,
              ),
              Text(title, style: new TextStyle(fontSize: 17.0),)
            ],
          )   
        ),
      ),
    );
  }
  
}



class MySlider extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return CarouselSlider(
        options:CarouselOptions(
          height: 400.0,
          autoPlay: true,          
        ),
        items: _img.map((imagepath){
          return Builder(
            builder: (BuildContext context){
              return Container(
                margin: const EdgeInsets.symmetric(
                  horizontal:5.0),
                child: Image.asset("images/$imagepath", width: 300, height: 70,),                
              );
            },
          );
        }).toList()
      ); 
  }

  final List _img=["logo.png","slidem.jpg","slidec.jpg","slide.jpg","slide1.jpg",
  "slide2.jpg","slide4.jpg","slide3.jpg","slide7.jpg","slide6.jpg","slide5.jpg"];
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
  
}

class _MenuState extends State<Menu> {
   
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
         child: Column( 
          children: <Widget>[
            Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: ((context) => MainPage())));
        },
        splashColor: Colors.green,
        child: Center(
          child:Column(
            mainAxisSize:MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                "images/dentelle.jpg",  width: 60,
                height: 60,
              ),
              Text("Carte d'invitation", style: new TextStyle(fontSize: 12.0),)
            ],
          )   
        ),
      ),
    ),
                
              MyMenu("robe", "images/robe1.jpg"),
              MyMenu("Coiffure", "images/coiffure.jpg"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyMenu("Gâteau", "images/gateau.jpg"),
              MyMenu("Voiture", "images/voiture1.jpg"),
              MyMenu("livre d'or", "images/livre_dor.jpg"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyMenu("make up", "images/make_up.jpg"),
              MyMenu("Logistique", "images/logistique.jpg"),
              MyMenu("Dragée", "images/drage.webp"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyMenu("Decoration", "images/deco.jpg"),
              MyMenu("Service traiteur", "images/service.jpg"),
              MyMenu(" Carte Menu", "images/menu.png"),
              ],
            ), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyMenu("Logistique", "images/logistique.jpg"),
              MyMenu("sucrerie", "images/sucrerie.jpg"),
              MyMenu("Animation", "images/animation.jpg"),
              ],
            ),   
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyMenu("Marque table", "images/table.jpg"),
              // MyMenu("sucrerie", "images/sucrerie.jpg"),
              // MyMenu("Animation", "images/animation.jpg"),
              ],
            ),       
          ],
        ),)
    );
  }
}

  Widget MyMenu(String title, String image) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){

        },
        splashColor: Colors.green,
        child: Center(
          child:Column(
            mainAxisSize:MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                image,  width: 60,
                height: 60,
              ),
              Text(title, style: new TextStyle(fontSize: 12.0),)
            ],
          )   
        ),
      ),
    );
  }
