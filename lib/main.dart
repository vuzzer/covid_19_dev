import 'package:covid/home_page.dart';
import 'package:flutter/material.dart';
import 'page_login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    PageLogin.tag: (context) => PageLogin(),
    HomePage.tag:  (context) => PageLogin()
  };
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "covid",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: PageLogin(),
      routes: routes,
    );
  }
}
