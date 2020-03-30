import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  static String tag ='home_page';
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 24.0),
              Row(
                children: <Widget>[
                  Container(
                    width: width/2,
                    color: Colors.white,
                    child: RaisedButton(
                      onPressed: (){
                         
                      },
                      child: Text("Benevolat", style: TextStyle(color: Colors.black)),
                      elevation: 5.0,),
                  ),
                  SizedBox(width: 20.0),
                  Container(
                    width: width/4,
                    color: Colors.white,
                    child: RaisedButton(
                      onPressed: null,
                      child: Text("Covid jeux", style: TextStyle(color: Colors.black)),
                      elevation: 5.0,),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                children: <Widget>[
                  Container(
                    width: width/2,
                    color: Colors.white,
                    child: RaisedButton(
                      onPressed: null,
                      child: Text("Sos", style: TextStyle(color: Colors.black)),
                      elevation: 5.0,),
                  ),
                   SizedBox(width: 20.0),
                  Container(
                    width: width/4,
                    color: Colors.white,
                    child: RaisedButton(
                      onPressed: null,
                      child: Text("Covid message", style: TextStyle(color: Colors.black)),
                      elevation: 5.0,),
                  ),
                ],
              ),
            ]
          ),
        ),
    );
  }
}