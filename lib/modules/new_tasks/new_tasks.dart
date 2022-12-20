import 'package:flutter/material.dart';

class newTasks extends StatelessWidget {
  const newTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('New Tasks',
        style:
        TextStyle(fontSize: 30,
        fontWeight:FontWeight.bold
    ),
     ),
    );
  }
}
