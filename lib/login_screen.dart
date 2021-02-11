import 'package:app_3/config/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(bottom:80),
        child:Column (
          children:<Widget> [
            Container(
                margin:EdgeInsets.only(top :80,),
                decoration: BoxDecoration(boxShadow: [BoxShadow(
                                                      color: Color(0x4400f58d),
                                                      blurRadius: 30,
                                                      offset: Offset(10,10),
                                                      spreadRadius: 0
                )]),
                child: Image(
                  image: AssetImage("assets/logo_round.png"),
                  width: 200,
                  height: 200,),
            ),

          Container(
            margin: EdgeInsets.only(top:20,),
            child:Text("Login",
                         style: TextStyle(fontSize: 30),),),
         
          Container(  //FOR EMAIL
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top:40,),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
                hintText: "write email here"
              ),
              keyboardType: TextInputType.datetime,
            ),
            ),
          

          Container( //FOR PASSWORD
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top:10,),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "password",
                hintText: "write password here"
              ),
              obscureText: true,
            ),
            ),
          InkWell(
              onTap: (){},
              child:Container(
                decoration: BoxDecoration (
                  gradient: LinearGradient(
                    colors: [primaryColor,secondaryColor]
                  ),
                  borderRadius: BorderRadius.circular(8)
                ),
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal :30,vertical:20),
                padding: EdgeInsets.symmetric(horizontal :30,vertical:20),
                child:Center(child: Text("Login With Email", style: TextStyle (color:Colors.white),),)
                )
            ),
          
          FlatButton(onPressed: (){},
           child: Text("Sign up using Email")),
          
          Container(
            margin: EdgeInsets.only(top:30,),
            child: Wrap(
              children: <Widget> [
              FlatButton.icon(
                onPressed: (){},
                icon: Icon(FontAwesomeIcons.google), color: Colors.red,
                label: Text("Sign in using Email", style: TextStyle (color:Colors.red),),),

               FlatButton.icon(
                onPressed: (){},
                icon: Icon(Icons.phone), color: Colors.blue,
                label: Text("Sign in using Phone", style: TextStyle (color:Colors.blue),),) 
                  
                ],),
          )
            ],),
      
      
      ),
    );
  }
}