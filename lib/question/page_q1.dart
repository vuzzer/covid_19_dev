import 'package:flutter/material.dart';

class PageOne extends StatefulWidget{
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne>{
  String dropdownValue = '';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(children: <Widget>[
              Text("Comment vous sentez vous ?", style:TextStyle(color: Colors.black)),
              Padding(padding: EdgeInsets.only(left: 20.0)),
              DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.arrow_back),
                iconSize: 24,
                elevation: 24,
                style: TextStyle(
                  color: Colors.green
                ),
                underline: Container(
                  height: 2,
                  color: Colors.greenAccent,
                ),
                onChanged: (String newValue){
                  setState(() {
                    dropdownValue = newValue;
                  });
                }, 
                items: <String>['1', '2', '3', '4'].map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value)
                    );
                }).toList(),
                )
            ],
            ),
            
            SizedBox(height: 10.0),

            Row(children: <Widget>[
              Text("Quelle est votre temperature ?", style:TextStyle(color: Colors.black)),
              Padding(padding: EdgeInsets.only(left: 20.0)),
              TextField(
                onChanged: null,
              ),
            ],
            ),

            SizedBox(height: 10.0),

            Row(children: <Widget>[
              Text("Avez-vous des frissons ?", style:TextStyle(color: Colors.black)),
              Padding(padding: EdgeInsets.only(left: 20.0)),
              DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.arrow_back),
                iconSize: 24,
                elevation: 24,
                style: TextStyle(
                  color: Colors.green
                ),
                underline: Container(
                  height: 2,
                  color: Colors.greenAccent,
                ),
                onChanged: (String newValue){
                  setState(() {
                    dropdownValue = newValue;
                  });
                }, 
                items: <String>['oui', 'non'].map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value)
                    );
                }).toList(),
                )
            ],
            ),

            Row(children: <Widget>[
              Text("Avez-vous des maux de tête ?", style:TextStyle(color: Colors.black)),
              Padding(padding: EdgeInsets.only(left: 20.0)),
              DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.arrow_back),
                iconSize: 24,
                elevation: 24,
                style: TextStyle(
                  color: Colors.green
                ),
                underline: Container(
                  height: 2,
                  color: Colors.greenAccent,
                ),
                onChanged: (String newValue){
                  setState(() {
                    dropdownValue = newValue;
                  });
                }, 
                items: <String>['oui', 'non'].map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value)
                    );
                }).toList(),
                )
            ],
            ),

            SizedBox(height: 10.0),

            Row(children: <Widget>[
              Text("Toussez-vous ?", style:TextStyle(color: Colors.black)),
              Padding(padding: EdgeInsets.only(left: 20.0)),
              DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.arrow_back),
                iconSize: 24,
                elevation: 24,
                style: TextStyle(
                  color: Colors.green
                ),
                underline: Container(
                  height: 2,
                  color: Colors.greenAccent,
                ),
                onChanged: (String newValue){
                  setState(() {
                    dropdownValue = newValue;
                  });
                }, 
                items: <String>['non', 'un peu', 'beaucoup'].map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value)
                    );
                }).toList(),
                )
            ],
            ),
          ],     
        )
      )
    );
  }
}