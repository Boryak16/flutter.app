import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class MessengerScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
      return Scaffold(backgroundColor: Colors.black,
        appBar:AppBar
          (backgroundColor: Colors.black,titleSpacing:20 ,
        title:Row(children: const [
          CircleAvatar(
            radius: 20,
            backgroundImage:NetworkImage('https://scontent.fcai19-6.fna.fbcdn.net/v/t39.30808-6/279217750_521260519670340_4157518490594169141_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=3DmX17xjsbkAX9e2G_H&_nc_ht=scontent.fcai19-6.fna&oh=00_AT8Pjek4x_dmTF2B1ystnNES4YHwRVn3Z5J-TLdMyV7qQw&oe=6335576D') ,),
          SizedBox(width: 15,),
          Text(
            'Chats',
            style: TextStyle(color: Colors.white),)]
        ),
        actions: [CircleAvatar(radius: 18,
            backgroundColor:
            Colors.white.withOpacity(0.2),
            child: IconButton(onPressed: (){},
              color: Colors.white,
                icon: Icon(Icons.camera_alt,size: 20,),)),
          SizedBox(width:10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(radius: 18,
              backgroundColor:
              Colors.white.withOpacity(0.2),
              child: IconButton(onPressed: (){},color: Colors.white,
                icon: Icon(Icons.edit,size: 20,)),),
          )

        ],
      ),
        body:  Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Container(decoration:BoxDecoration
                    (
                    borderRadius:BorderRadius.circular(30),
                      color: Colors.grey[800]
                  ) ,
                    child: Row(children: [IconButton(onPressed: (){},
                        icon: Icon(Icons.search,
                          color: Colors.white,)),
                     SizedBox(width: 10),
                      Text('Search',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                     ],
                    ),
                  ),
                  SizedBox(
                  height: 20,),
                  Container( height: 115,
                    child: ListView.separated(shrinkWrap: true,
                      scrollDirection:Axis.horizontal,
                        itemBuilder: (context,index) => buildStoryItem(),
                    separatorBuilder:
                        (context,index)=>SizedBox(width: 20)
                      ,itemCount:6,),
                  ),
                  SizedBox(
                    height: 15,),
                  ListView.separated( physics: NeverScrollableScrollPhysics() ,shrinkWrap: true,itemBuilder: (context,index){
                    return buildChatItem();
                  }, separatorBuilder: (context,index)=>SizedBox(height: 10,),
                      itemCount: 15)

                ],
              ),
          ),

        ),

      );

  }

  Widget buildChatItem() =>Row(
   children: [Stack(alignment: AlignmentDirectional.bottomEnd,
     children: const [
       CircleAvatar(radius:30 ,
         backgroundImage:
         NetworkImage('https://scontent.fcai19-6.fna.fbcdn.net/v/t39.30808-6/306122387_606485281147863_484649445038865868_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=-uLZRHqXcrMAX8rMTxI&_nc_ht=scontent.fcai19-6.fna&oh=00_AT8IFdPfuRW6JN6mvnbpWbZD38ZPf97yvymHb_EgC0hjMw&oe=6335E7EC'),),
       Padding(
         padding: EdgeInsetsDirectional.only(bottom:3 ,end: 3),
         child: CircleAvatar(radius: 7,backgroundColor: Colors.green,),
       ),
     ],
   ),SizedBox(width: 15,),
     Expanded(
       child: Column(crossAxisAlignment: CrossAxisAlignment.start,
         children: [Text('Mustafa khalid',
           maxLines: 1,
           overflow:TextOverflow.ellipsis,
           style: TextStyle(
               color: Colors.white,
               fontSize: 16,
               fontWeight: FontWeight.bold),),
           Text(
             'listen my new song now on youtube',
             maxLines: 1,
             overflow: TextOverflow.ellipsis,
             style: TextStyle(color: Colors.white),)

         ],
       ),
     ),
     Padding(
       padding: const EdgeInsets.symmetric(horizontal: 10.0),
       child: Container(width: 7
         ,height: 7,
         decoration:
         BoxDecoration(color: Colors.blue
             ,shape:BoxShape.circle

         ),
       ),
     ),
     Text('04.00AM',
       style: TextStyle(color: Colors.white),)

   ],
 );
  Widget buildStoryItem() => Container(width: 60,
    child: Column(
      children: [
        Stack(alignment: AlignmentDirectional.bottomEnd,
          children: const [
            CircleAvatar(radius:30 ,
              backgroundImage:
              NetworkImage('https://scontent.fcai19-6.fna.fbcdn.net/v/t39.30808-6/306122387_606485281147863_484649445038865868_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=-uLZRHqXcrMAX8rMTxI&_nc_ht=scontent.fcai19-6.fna&oh=00_AT8IFdPfuRW6JN6mvnbpWbZD38ZPf97yvymHb_EgC0hjMw&oe=6335E7EC'),),
            Padding(
              padding: EdgeInsetsDirectional.only(bottom:3 ,end: 3),
              child: CircleAvatar(radius: 7,backgroundColor: Colors.green,),
            ),
          ],
        ),
        SizedBox(height: 10,)
        ,Text('Mustafa khalid Boryak',
          style: TextStyle(color: Colors.white),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,),
      ],
    ),
  );


}

