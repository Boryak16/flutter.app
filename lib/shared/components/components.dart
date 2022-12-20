
import 'package:flutter/material.dart';
Widget defaultButton({
  double width=double.infinity,
  Color background=Colors.blue,
  double radius=0,
  bool isUpperCase=true,
  required Function function,
  required String text,
  Color colorText=Colors.white
}) =>Container(
  width: width,
height: 40,
  decoration: BoxDecoration(
borderRadius: BorderRadius.circular(radius),
color: background,
  ),
child:
MaterialButton(
  onPressed:(){
   function();
  },
  child:
Text(
   isUpperCase? text.toUpperCase():text,
  style:TextStyle(
      color:colorText
  ),
),
),
);

Widget defaultTextField({
  required String label,
  required IconData prefix,
 InputDecoration? decoration,
  Function? onChange,
  bool isPassword = false,
  required TextEditingController controller,
  Function? onSubmit,
  Function? suffixPressed,
  required TextInputType type,
  IconData? suffix,
  required Function validat,
})=> TextFormField(
 validator:(s)
  {
  return validat(s);
  }   ,
  controller:controller,
keyboardType:type,
decoration: InputDecoration(
labelText: label,
prefixIcon:Icon(prefix),
suffixIcon:suffix!=null ? IconButton(onPressed:(){
  suffixPressed;
} ,icon:Icon(suffix)):null,
border: const OutlineInputBorder(),
),
onFieldSubmitted:(s)
{
  onSubmit!(s);
},
obscureText: isPassword,
onChanged:(s)
{
  onChange!(s);
}
);