import 'package:flutter/material.dart';

class REsScr extends StatelessWidget {
  final double weight;
  final int age;
  final bool isMale;
  REsScr({
      required this.weight,
      required this.age,
      required this.isMale
  });



  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black87,
      appBar:AppBar(backgroundColor: Colors.black87,
        elevation: 0.0,
        leading:MaterialButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Icon(
              Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      title:Text(
          'REs.BMI'
      ) ,
      ) ,
    body:
      Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender:${isMale?'male':'female'}',style:
            TextStyle(fontSize: 20,color: Colors.white,
                fontWeight:
                FontWeight.bold)
            ),
            Text('weight:${weight}'
                ,style:
                TextStyle(fontSize: 20,color: Colors.white,
                    fontWeight:
                    FontWeight.bold)
            ),
            Text('Age:${age}'
                ,style:
                TextStyle(fontSize: 20,
                    color: Colors.white,
                    fontWeight:
                    FontWeight.bold)
            ),
          ],
        ),
      )
      ,
    );
  }
}
