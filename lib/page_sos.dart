import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class PageSos extends StatefulWidget{
  _PageSosState createState() => _PageSosState();
}

class _PageSosState extends State<PageSos>{
  List<TimelineModel> items = [
      TimelineModel(Placeholder(),
          position: TimelineItemPosition.random,
          iconBackground: Colors.redAccent,
          icon: Icon(Icons.blur_circular)),
      TimelineModel(Placeholder(),
          position: TimelineItemPosition.random,
          iconBackground: Colors.redAccent,
          icon: Icon(Icons.blur_circular)),
    ];
  @override
  Widget build(BuildContext context){
    return Scaffold(body: ListView(
        children: <Widget>[
         Timeline(children: items,  position: TimelinePosition.Center)
        ],
      ),
    );
  }
}