
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wedding_planner/model.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
  
}

class _MenuState extends State<Menu> {
   
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            MyMenu("Carte d'invitation", "images/Eurpean.jpg", context),
            MyMenu("Carte d'invitation", "images/Eurpean.jpg", context),
            MyMenu("Carte d'invitation", "images/Eurpean.jpg",context),
            MyMenu("Carte d'invitation", "images/Eurpean.jpg", context),
            MyMenu("Carte d'invitation", "images/Eurpean.jpg",context),
            MyMenu("Carte d'invitation", "images/Eurpean.jpg", context),
            MyMenu("Carte d'invitation", "images/Eurpean.jpg", context),
            MyMenu("Carte d'invitation", "images/Eurpean.jpg",context),
            MyMenu("Carte d'invitation", "images/Eurpean.jpg",context),
          ],
        ),
    );
  }
}

  Widget MyMenu(String title, String image, context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          print("object");
          Navigator.push(context, MaterialPageRoute(builder: ((context) => MainPage())));
        },
        splashColor: Colors.green,
        child: Center(
          child:Column(
            mainAxisSize:MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                image,  width: 80,
                height: 80,
              ),
              Text(title, style: new TextStyle(fontSize: 17.0),)
            ],
          )   
        ),
      ),
    );
  }
