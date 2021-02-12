import 'package:app_3/config/config.dart';
//import 'package:app_3/login_screen.dart';
import 'package:flutter/material.dart';

class EmailPassSignupScreen extends StatefulWidget {
  @override
  _EmailPassSignupScreenState createState() => _EmailPassSignupScreenState();
}

class _EmailPassSignupScreenState extends State<EmailPassSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email Sign Up Screen"),
      ),
      body: SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Container(
                    //FOR name
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(
                      top: 40,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Name",
                          hintText: "write name here"),
                      keyboardType: TextInputType.datetime,
                    ),
                  ),
                  Container(
                    //FOR EMAIL
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(
                      top: 40,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Email",
                          hintText: "write email here"),
                      keyboardType: TextInputType.datetime,
                    ),
                  ),
                  Container(
                    //FOR PASSWORD
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(
                      top: 10,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "password",
                          hintText: "write password here"),
                      obscureText: true,
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                        //Navigator.push(
                        //         context, 
                        //         MaterialPageRoute(builder: (context)=>LoginScreen() ) );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [primaryColor, secondaryColor]),
                              borderRadius: BorderRadius.circular(8)),
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          child: Center(
                            child: Text(
                              "Login With Email",
                              style: TextStyle(color: Colors.white),
                            ),
                          ))),
                ],
              ))),
    );
  }
}
