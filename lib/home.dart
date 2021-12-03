import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_ui_clone/widgets/actions_toolbar.dart';
import 'package:tiktok_ui_clone/widgets/bottom_toolbar.dart';
import 'package:tiktok_ui_clone/widgets/video_description.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}
Widget get topSection => Container(
  height: 100.0,
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children:<Widget> [
      Text('following'),
      Container(
        width: 15.0,
      ),
      Text('For you',
      style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
      )
    ],
  ),

);


Widget get middleSection =>  Expanded(child:Row(
  mainAxisSize: MainAxisSize.max,
  crossAxisAlignment: CrossAxisAlignment.end,

  children: <Widget>[

   VideoDescription(),
    ActionToolbar(),
    Container(

      width: 100.0,
      color: Colors.red[300],
    )
  ],


) );



class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
topSection,
         middleSection,
      BottomToolbar(),
        ],

      ),


    );
  }
}
