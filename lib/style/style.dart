

import 'dart:ui';

import 'package:flutter/material.dart';

TextStyle HeadTextStyle(){
  return TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );
}

TextStyle headminTextStyle(){
  return TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );
}



TextStyle HeadText(){
  return TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );
}




const  colorRed=Color.fromRGBO(255, 99, 71,1);
const colorGreen=Color.fromRGBO(60, 179, 113,1);
const colorWhite=Color.fromRGBO(255,255,255,1);
const darkBlue=Color.fromRGBO(44,62,80,1);
const colorLight=Color.fromRGBO(240, 240, 240,1);
const colorGrey=Color.fromRGBO(180, 180, 180,1);
const Blue=Color.fromRGBO(0, 0, 255,1);

InputDecoration AppInputDecoration(labeltext){
  return InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorGreen,width: 1),

    ),
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    filled: true,
    fillColor: colorWhite,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorWhite,width: 1),

    ),
    border: OutlineInputBorder(),
    labelText:labeltext,
  );
}

ButtonStyle appButtonstyle(){
  return ElevatedButton.styleFrom(
    elevation: 1,
    padding: EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
  );
}

Ink successButton(ButtonText){
  return Ink(
    decoration: BoxDecoration(
      color: colorGreen,
      borderRadius: BorderRadius.circular(6),

    ),child: Container(
    height: 45,
    alignment: Alignment.center,
    child: Text(ButtonText,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
  ),
  );
}

DecoratedBox DropDownButton (child){
  return DecoratedBox(decoration: BoxDecoration(
    color: colorWhite,borderRadius: BorderRadius.circular(4),
    border: Border.all(color: Colors.green),

  ),
    child: child,);
}