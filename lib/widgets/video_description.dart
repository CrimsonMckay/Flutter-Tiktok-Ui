

import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(20,0,0,0),
        height: 70.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
Text('@CrimsonMckay',style: TextStyle(fontWeight: FontWeight.bold),),
            Text('Video title and some other stuff'),
            Row(
              children: [

                Icon(Icons.music_note,size: 15.0,color: Colors.white,),
                Text('J.cole-The off season-let go my hand',style: TextStyle(fontSize: 12.0),)

              ],
            ),
          ],
        ),
      ),

    );
  }
}
