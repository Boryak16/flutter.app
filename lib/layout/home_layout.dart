import 'package:flutter/material.dart';
import 'package:learnyngm/modules/new_tasks/new_tasks.dart';

import '../modules/archived_tasks/Archived_tasks.dart';
import '../modules/done_tasks/done_tasks.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex =0;
  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archive Tasks',
  ];
  List<Widget> Screens=[
    newTasks(),
    doneTasks(),
    archiveTasks(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(titles[currentIndex]),
      ),
      body:Screens[currentIndex] ,
      floatingActionButton: FloatingActionButton(
        onPressed:()
        {
          getName().then((value)
          {
          print(value);
            print('allah caring me every moment');
          }).catchError((error){
            print('error is $error');
          });

        },
        child: Icon(
          Icons.add
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index)
        {
        setState(() {
          currentIndex =index;
        });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(
  Icons.menu,
),
  label: 'Tasks'
),
          BottomNavigationBarItem(icon: Icon(
            Icons.check_circle_outline,
          ),
              label: 'Done'
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.archive_outlined,
          ),
              label: 'Archived'
          ),
        ],
      ),
    );
  }
  Future<String> getName() async
  {
    return 'Muhamed boryak';
  }
}
