import 'package:app_3/config/config.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _showAddTaskDialog ();
        },
        child: Icon(
          Icons.add,
          color: Colors.black,),
        elevation: 4,
        backgroundColor: primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape:CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget> [
            IconButton(icon: Icon(Icons.menu), onPressed: (){}),

            IconButton(icon: Icon(Icons.person_outline) , onPressed: () {}),

          ],

        ),),

    );

  }
  void _showAddTaskDialog (){
    showDialog(
      context: context,
      builder:(ctx) {
        return SimpleDialog(
          title: Text("Add Task"),
          children: <Widget> [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:"write your task here",
                  labelText: "Task name"
                  ),
              )),
            

            Container(
              margin: EdgeInsets.all(10),
              child: Row(children:<Widget>[
                FlatButton(
                  onPressed: (){
                    Navigator.of(ctx).pop();
                  }, 
                  child: Text("Cancel")),
                RaisedButton(
                  onPressed: (){}, 
                  color: primaryColor,
                  child: Text("Add")),

              ],),
            )

          ],
         shape:RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(16)
         )

        );
      },
    );
  }
}