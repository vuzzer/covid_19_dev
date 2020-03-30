import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'home_page.dart';

class PageLogin extends StatefulWidget{
  static String tag='login-page';
  @override
  _PageLoginState createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin>{
  @override
  Widget build(BuildContext context){

     final logo = Hero(tag: 'hero',
      child: CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 48.00,
    ),
    );

    final username = TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      decoration: InputDecoration( hintText: 'nom utilisateur',
      contentPadding: EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.0)
      ),
      ),
    );

    final city = TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      decoration: InputDecoration( hintText: 'ville',
      contentPadding: EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.0)
      ),
      ),
    );

    final datefield = DateTimeField(
      format: DateFormat("dd-MM-yyyy"),
      onShowPicker:(context, currentValue){
        return showDatePicker(context: context, initialDate: currentValue ?? DateTime.now(), firstDate: DateTime(1900), lastDate: DateTime(2100));
      },
    );

    final loginButton =  Container(
    width: MediaQuery.of(context).size.width/4,
    child: RaisedButton(
      onPressed: (){
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => HomePage()));
      },
      textColor: Colors.white,
      padding: const EdgeInsets.all(0.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
                Color(0xFF0D47A1),
                Color(0xFF1976D2),
                Color(0xFF42A5F5)
            ]
          )
          ),
          padding: const EdgeInsets.all(8.0),
          child: const Text("Enregistrer",
          style: TextStyle(fontSize: 20,)),
      ),
      ));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 24.0, right: 24.0),
        children:<Widget>[
           logo,
           SizedBox(height: 48.0),
           username,
           SizedBox(height: 8.0),
           datefield,
           SizedBox(height: 8.0),
           city,
           SizedBox(height: 24.0),
           loginButton,
        ]
      ),)
    );
  }
}
