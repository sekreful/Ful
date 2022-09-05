import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wedding_planner/step.dart';

class Connexion extends StatefulWidget{

  @override
  _ConnexionState createState()=> _ConnexionState();
} 


class _ConnexionState extends State<Connexion>{
  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mdpController = TextEditingController();

  bool isRememberMe=false;
  final _formKey= GlobalKey<FormState>(); 

  Widget buildNom(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Nom",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0,2)
            )
          ]
          
        ),
        height: 50,
        child: TextFormField(
          textInputAction: TextInputAction.next,
          validator: (newValue) => newValue!.isEmpty? "Saisir  le nom ": null,
          keyboardType: TextInputType.name,
          style:TextStyle(
            color: Colors.black87
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top:14),
            // prefixIcon:Icon(
            //   Icons.email,
            //   color: Color(0xff5ac18e),
            // ),
            hintText: "Nom Complet",
            hintStyle: TextStyle(
              color: Colors.black38
            )
          ),
        ),
      )
    ],
  );
}

  Widget buildContact(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Contact",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 5),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0,2)
            )
          ]
          
        ),
        height: 50,
        child: TextFormField(
           textInputAction: TextInputAction.next,
          validator: (newValue) => newValue!.isEmpty? "Saisir  le contact ": null,
          keyboardType: TextInputType.phone,
          style:TextStyle(
            color: Colors.black87
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top:14),
            // prefixIcon:Icon(
            //   Icons.email,
            //   color: Color(0xff5ac18e),
            // ),
            hintText: "Contact",
            hintStyle: TextStyle(
              color: Colors.black38
            )
          ),
        ),
      )
    ],
  );
}

  Widget buildEmail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Email",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0,2)
            )
          ]
          
        ),
        height: 50,
        child: TextFormField(
           textInputAction: TextInputAction.next,
          validator: (newValue) => newValue!.isEmpty? "Saisir  le email ": null,
          keyboardType: TextInputType.emailAddress,
          style:TextStyle(
            color: Colors.black87
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top:14),
            prefixIcon:Icon(
              Icons.email,
              color: Color(0xff5ac18e),
            ),
            hintText: "Email",
            hintStyle: TextStyle(
              color: Colors.black38
            )
          ),
        ),
      )
    ],
  );
}

Widget buildPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Mot de passe",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 20),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
         boxShadow: [
            BoxShadow(color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0,2)
            )
          ]
        ),
        height: 50,
        child: TextFormField(
           textInputAction: TextInputAction.next,
          validator: (newValue) => newValue!.isEmpty? "Saisir  le mot de passe": null,
          obscureText: true,
          style:TextStyle(
            color: Colors.black87
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top:14),
            prefixIcon:Icon(
              Icons.lock,
              color: Color(0xff5ac18e),
            ),
            hintText: "Mot de Passe",
            hintStyle: TextStyle(
              color: Colors.black38
            )
          ),
        ),
      ),
    ],
  );
}

Widget buildForgotPassBtn(){
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
      onPressed: ()=> print("Mot de oublié"),
      padding: EdgeInsets.only(right: 0),
      child: Text(
        "Mot de Passe Oublié ?",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
      ),
    ),
  );
}

// Widget buildRememberCb(){
//   return Container(
//     height: 15,
//     child: Row(
//       children: <Widget> [
//         Theme(data:ThemeData(unselectedWidgetColor: Colors.white),
//          child: Checkbox(
//           value: isRememberMe,
//           checkColor: Colors.green,
//           activeColor: Colors.white,
//           onChanged: (value){
//             setState(() {
//               isRememberMe=value!;
//             }
//             );
//           },
//         )
//         ),
//         Text(
//           "Remember me",
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold
//           ),)
//       ]
//       ),
//   );
// }

Widget buildLoginBtn(){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          Navigator.push(context, MaterialPageRoute(builder: ((context) => CartForm())));
        }
      },
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15)
      ),
      color: Colors.white,
      child: Text(
        "SE CONNECTER",
        style: TextStyle(
          color: Color(0xff5ac18e),
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
    ),
  );
}

Widget buildSigUpBtn(){
  return GestureDetector(
    onTap: () => print("Sign Up Pressed"),
    child: RichText(
      text: TextSpan(
      children: [
        TextSpan(
          text: ("Vous n'avez pas Compte ?"),
          style: TextStyle(
            color:Colors.white,
            fontSize:18,
            fontWeight: FontWeight.w500
          ) 
          )
        ,
        TextSpan(
          text:" Connectez-vous ?",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
          )
        )
      ])),
  );
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value:SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x665ac18e),
                      Color(0x995ac18e),
                      Color(0xcc5ac18e),
                      Color(0xff5ac18e),
                    ]
                  )
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding:EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 120
                  ),
                   child: Form(
                    key: _formKey,
                    child:  Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Connectez-vous !",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    buildNom(),
                    SizedBox(height: 10),
                    buildContact(),
                    SizedBox(height: 10),
                    buildEmail(),
                    SizedBox(height: 10,),
                    buildPassword(),
                    SizedBox(height: 10),
                    buildForgotPassBtn(),
                    SizedBox(height: 10),
                    buildLoginBtn(),
                    SizedBox(height: 10),
                    buildSigUpBtn(),
                  ], 
                ), 
                   )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}