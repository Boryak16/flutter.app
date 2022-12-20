import 'package:flutter/material.dart';
import 'package:learnyngm/modules/res_bmi/res_bmi.dart';

class BmiCalc extends StatefulWidget {

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  bool isMale=true;
  double height =120;
  double weight =40;
  int age=20;
  @override
  Widget build(BuildContext context) {

    return Scaffold(backgroundColor: Colors.black87,

      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black87,
        title:
      Text('BMI Calculator',),
      ),
      body: Column(
        children: [
          Expanded(child:
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: ()
                    {setState(() {
                      isMale=true;
                    });
                      },
                    child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                      ,  color:isMale ? Colors.blue : Colors.grey[500] ,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Image(
                           height: 90,
                           width: 90,
                             image:
                         AssetImage(
                             'assets/images/Male_symbol_-_black.png'
                         )
                         ),
                          Text('Male',style:
                            TextStyle(fontSize: 25,
                            fontWeight: FontWeight.bold,)
                          ),
                        ],
                      ),

                     ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(onTap: (){
                    setState(() {
                      isMale=false;
                    });
                  },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                       , color:isMale ? Colors.grey[500] : Colors.blue ,),
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              height: 100,
                              width: 100,
                              image:
                              AssetImage(
                                  'assets/images/Female_symbol.svg.png'
                              )
                          ),
                          Text('Female', style:
                          TextStyle(fontSize: 25,
                            fontWeight: FontWeight.bold,

                          ),)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20
                ),
                child: Container(
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:Colors.grey[500]
                  ) ,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column( mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Height',style:
                          TextStyle(fontSize: 25,
                            fontWeight: FontWeight.bold,)
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline:TextBaseline.alphabetic ,
                            mainAxisAlignment:MainAxisAlignment.center ,
                            children: [
                              Text('${height.round()}',style:
                              TextStyle(fontSize: 40,
                                fontWeight: FontWeight.bold,)
                              ),
                              Text('cm',style:
                              TextStyle(fontSize: 15,
                                fontWeight: FontWeight.bold,)
                              )
                            ],
                          ),
                        Slider(
                            value:height,
                            min:80,
                            max:220,
                            onChanged: (value)
                            {
                          setState(() {
                            height=value ;
                          });
                        })
                        ],
                    ),
                      )],
                  ),
                ),
              )),
          Expanded(child:
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Colors.grey[500]
                    ) ,
                    child: Column(
                     mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                    Text('Age',style:
                    TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,)
                    ),
                        Text('$age',style:
                        TextStyle(fontSize: 30,
                          fontWeight: FontWeight.w900,)
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                age--;
                              });
                            },
                              mini:true ,
                            child: Icon(
                              Icons.remove
                            ),),
                            SizedBox(
                              width:5 ,

                            ),
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                              mini: true,
                              child: Icon(
                                  Icons.add
                              ),)

                          ],
                        )

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Colors.grey[500]
                    ) ,
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        Text('Weight',style:
                        TextStyle(fontSize: 20,
                          fontWeight: FontWeight.bold,)
                        ),
                        Text('$weight',style:
                        TextStyle(fontSize: 30,
                          fontWeight: FontWeight.w900,)
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                weight--;
                              });
                            },
                              mini:true ,
                              child: Icon(
                                  Icons.remove
                              ),),
                            SizedBox(
                              width:5 ,

                            ),
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                              mini: true,
                              child: Icon(
                                  Icons.add
                              ),)

                          ],
                        )

                      ],
                    ),
                  ),
                ),


              ],
            ),
          )),
          Container(
            child: MaterialButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder:(context) =>REsScr(
                        age: age,
                        isMale: isMale,
                        weight: weight
                        ,)

              )
              );
              },
                height: 50,
                minWidth:double.infinity ,
                color: Colors.grey[500],
            child:Text(
              'calculate',
              style: TextStyle(
                  color:Colors.white,
              fontWeight: FontWeight.bold
              ),
            )
            ),
          )
        ],
      )
    );
  }
}
