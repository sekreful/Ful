import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wedding_planner/login.dart';

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin{
  late TabController controller ;

  @override
  void initState(){
    super.initState();
    controller=new TabController(vsync: this,length: 4, initialIndex: 0);
  }
     
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith (statusBarColor: Colors.green));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Modèle carte d'invitation")
       ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          HomePage(),
          HomePage(),
          HomePage(),
          HomePage(),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List names=["Arc blanc dentelle","Arc blanc fleur","Ensemble Romantique",
  "Laser double face","Nouveau blanc Eurpean","Papier board","Royal Golden"];

  List prix=["2.000 FCFA","850 FCFA","1.300 FCFA",
  "1.900 FCFA","2.300 FCFA","2.800 FCFA","3.800 FCFA"];

  List images=["dentelle.jpg","fleur.jpg","Romantique.jpg",
  "Laser.jpg","Eurpean.jpg","board.jpg","Royal.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView.builder(
        itemCount: 7,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) =>Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal:10.0, vertical:5.0),
          child:Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(0.0),
             ),
             child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 10.0),
             child:Column (
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      
                      width: 110.0,
                      height: 110.0,
                      color: Color.fromARGB(255, 218, 231, 218),
                      child: CircleAvatar( 
                        child: Image.asset("images/${images[index]}"),
                        backgroundColor:Colors.green,
                        foregroundColor:Colors.green,
                         )
                      ), 
                      SizedBox(width: 5.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(names[index], style: TextStyle(color: Colors.black, fontSize:
                          16.0, fontWeight:FontWeight.bold)),
                          Text(prix[index], style: TextStyle(color: Colors.grey, fontSize:
                          14.0)),
                          
                        ],
                      ),
                  ],
                ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => Connexion())));
                  },
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text("Commander",style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
             ),
            ),
          )
        ),
      ),
      
    );
     
  }
}