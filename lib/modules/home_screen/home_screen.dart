import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
return Scaffold(appBar: AppBar
  (
  backgroundColor: Colors.white10  ,
  leading:Icon(Icons.menu) ,
  title: Text('Boryak'),
  actions: [IconButton(onPressed: (){print('notification clicked');},
    icon: Icon(Icons.notification_important))
    ,IconButton(onPressed: (){print('search clicked');},
    icon: Icon(Icons.search),)]

  ),
body:   Column(
  children: [
     Container(width: 300,
       decoration: BoxDecoration(
       borderRadius:BorderRadius.circular(314),
     ),clipBehavior:Clip.antiAliasWithSaveLayer,
       child: Padding(
         padding:  EdgeInsets.all(8),
         child: Stack(alignment: Alignment.bottomCenter,
          children: [
                Image(height:300,
                    width: 300,
                    fit: BoxFit.cover,
                    image:
                    NetworkImage
                      ('https://imgs.search.brave.com/fKZKToFadVv2OGV9-FIyWRhI_fMVGv6bxenDHf8zOqQ/rs:fit:1200:640:1/g:ce/aHR0cHM6Ly9jZG4t/ZXVyb3BlMS5sYW5t/ZWRpYS5mci92YXIv/ZXVyb3BlMS9zdG9y/YWdlL2ltYWdlcy9l/dXJvcGUxL3NjaWVu/Y2VzL3ZpZGVvcy1s/LWltYWdlLXJhcmUt/ZGUtbGEtY291cm9u/bmUtZHUtc29sZWls/LTc5MDMzNC8xNTgw/MzUwMi0xLWZyZS1G/Ui9WSURFT1MtTC1p/bWFnZS1yYXJlLWRl/LWxhLWNvdXJvbm5l/LWR1LVNvbGVpbC5q/cGc')),
    Container(color: Colors.black.withOpacity(0.5),
    width:double.infinity,
      padding:
      EdgeInsets.symmetric(
          vertical:10
      ) ,
    child:   Text(
            'Moon',textAlign:TextAlign.center,
            style:
            TextStyle(fontSize: 35,
            color:Colors.white, ),),
    )
          ],
    ),
       ),
     ),
  ],
)
);


  }
}

