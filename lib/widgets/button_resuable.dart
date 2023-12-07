import 'package:flutter/material.dart';
class ButtonReusable extends StatelessWidget {
  final String title;
  final Color color;
  final GestureTapCallback onpress;
  const ButtonReusable({ required this.title,required this.color,required this.onpress, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(onPressed: onpress,
           style: ElevatedButton.styleFrom(

             backgroundColor: color,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(10),
             )
             //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(10)),
           ),


          child:Container(

            height: 60,
            child: Center(
              child: Text(title,),
            ),
          )),
    );
  }
}
