
import 'package:flutter/material.dart';

import '../../models/user/user_model.dart';

class UserScreen  extends StatelessWidget {
List<UserModel>  users = [
  UserModel(id: 1, name: 'kholid', phone: '+20545842255'),
  UserModel(id: 2, name: 'klkldjhjfk', phone: '+2051584505'),
  UserModel(id: 3, name: 'mosalah', phone: '+2064944895'),
  UserModel(id: 4, name: 'kholid', phone: '+20545842255'),
  UserModel(id: 5, name: 'klkldjhjfk', phone: '+2051584505'),
  UserModel(id: 6, name: 'mosalah', phone: '+2064944895'),
  UserModel(id: 7, name: 'kholid', phone: '+20545842255'),
  UserModel(id: 8, name: 'klkldjhjfk', phone: '+2051584505'),
  UserModel(id: 9, name: 'mosalah', phone: '+2064944895'),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
    title: Text('Users'),
    ) ,
    body:ListView.separated


      (
        itemBuilder: (context,index)=>buildUserItem(users[index]),
        separatorBuilder: (context,index)=>
            Container(
              width: double.infinity,
              height: 1,
              color:Colors.grey[300] ,
            )
        ,
        itemCount: users.length)
  ,

    );
  }
  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
        children: [
          CircleAvatar(
              radius: 25,
              child: Text(
                '${user.id}',
                style: TextStyle(
                    fontSize:25,
                    fontWeight: FontWeight.bold
                ),)
          )
          ,SizedBox(
            width: 20, )
          ,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize:MainAxisSize.min ,
            children: [ Text(
              '${user.name}',
              style: TextStyle(
                  fontSize:25,
                  fontWeight: FontWeight.bold
              ),)
              ,Text('${user.phone}',
                style: TextStyle(
                    color: Colors.grey
                ),
              ),

            ],
          )
        ]),
  );
}
