import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_ui_clone/tik_tok_icons_icons.dart';

class ActionToolbar extends StatelessWidget {
  //Full dimension of an action
static const double ActionWidgetSize=60;
// The size of the icon showen for Social actions
static const double ActionIconSize=35.0;
//The size of the share social icon
  static const double ShareActionIconSize=25.0;
// The size of the profile image in the follow Action
  static const double ProfileImageSize=50.0;
  // The size of the plus icon under the profile image in follow action
  static const double plusIconSize=20.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children:[
          _getFollowingAction(),
          _getSocialAction(title: '3.2m', icon: TikTokIcons.heart),
          _getSocialAction(title: '16.4k', icon: TikTokIcons.chat_bubble),
          _getSocialAction(title: 'Share', icon: TikTokIcons.reply,isShare: true),
          _getMusicPlayerAction()

        ],
      ),
    );
  }
  Widget _getSocialAction({
    required String title,
    required IconData icon,
    bool isShare=false
  }){
    return Container(
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Icon(icon, size: isShare ? ShareActionIconSize : ActionIconSize, color:Colors.grey[300]),

          Padding(
            padding: EdgeInsets.only( top: isShare? 5.0:2.0),
            child: Text(title,style:TextStyle(fontSize:12.0  ) ,),
          ),

        ],
      ),
    );
  }
  Widget _getFollowingAction(){
    return Container(
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      child: Stack(
        children: [
          _getProfilePicture(),
          _getPlusIcon()
        ],
      ),
    );
  }


  Widget _getProfilePicture(){
    return Positioned(
      //center our profile image
        left: (ActionWidgetSize /2)-(ProfileImageSize/2),
        child:
    Container(
      height: ProfileImageSize,
      width: ProfileImageSize,
      padding: EdgeInsets.all(1.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(ProfileImageSize/2),

      ),
      child: CachedNetworkImage(
        imageUrl:"https://images.unsplash.com/photo-1638499182049-e37bc17aaa12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
        placeholder:(context,url) => new CircularProgressIndicator(),
        errorWidget:(context,url,error) => new Icon(Icons.error),

      ),

    ));
  }

  Widget _getPlusIcon(){
    return Positioned(
      left: ((ActionIconSize/2)-(plusIconSize/2 )),
      bottom: 0,
      child: Container(
        width: plusIconSize,
        height: plusIconSize,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 43, 84),
          borderRadius: BorderRadius.circular(15.0),


        ),
        child: Icon(
          Icons.add,
              size: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }
  LinearGradient get musicGradient =>LinearGradient(
      colors: [
        Colors.grey,
        Colors.grey,
        Colors.grey,
        Colors.grey
  ],
  stops: [0.0,0.4,0.6,1.0],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight
  );

  Widget _getMusicPlayerAction(){
    return Container(

      width: ActionWidgetSize,
      height: ActionWidgetSize,
      child: Column(
        children: [
Container(
 padding: EdgeInsets.only(top: 10.0),
  height: ProfileImageSize,
  width: ProfileImageSize,
  decoration: BoxDecoration(
    gradient: musicGradient,
    borderRadius: BorderRadius.circular(ProfileImageSize/2),
  ),
    child: CachedNetworkImage(
      imageUrl:"https://images.unsplash.com/photo-1638499182049-e37bc17aaa12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
      placeholder:(context,url) => new CircularProgressIndicator(),
      errorWidget:(context,url,error) => new Icon(Icons.error),

    ),
)

        ],
      ),
    );
  }
}

