import 'package:flutter/material.dart';

class doneTasks extends StatelessWidget {
  const doneTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Done Tasks',
        style:
        TextStyle(fontSize: 30,
            fontWeight:FontWeight.bold
        ),
      ),
    );
  }
}
