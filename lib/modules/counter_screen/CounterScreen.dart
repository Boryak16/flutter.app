import 'package:flutter/material.dart';

class CounterClass extends StatefulWidget {
  @override
  State<CounterClass> createState() => _CounterClassState();
}

class _CounterClassState extends State<CounterClass> {
int Count =1;
@override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Counter',
        style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.w900,
        ),
        ),
      ) ,
      body:Center(
        child: Row
          (mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              setState(() {
                Count--;
                print(Count);
              });
              }, child:Text('Minus')),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal:20 ,

              ),
              child: Text(
                '${Count}',
                style: TextStyle(
                  fontSize: 35,fontWeight: FontWeight.w900
                ),
              ),
            ),
            TextButton(onPressed: (){
              setState(() {
                Count++;
                print(Count) ;
              });
              },
                child:Text('plus')),
          ],
        ),
      )
      ,
    ) ;
  }
}
