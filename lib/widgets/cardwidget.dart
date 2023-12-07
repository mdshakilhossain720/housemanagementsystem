import 'package:flutter/material.dart';
class cardwidget extends StatelessWidget {
  final String due,payment,text;
  const cardwidget({
    super.key, required this.due, required this.payment, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 190,
      child: Card(
        color: Colors.white,
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text(text,style: TextStyle(fontSize: 15),),
              SizedBox(height: 8,),
              Text(due,style: TextStyle(fontSize: 15),),
              SizedBox(height: 8,),
              FittedBox(child: Text(payment,style: TextStyle(fontSize: 15),)),
              SizedBox(height: 8,),
            ],
          ),
        ),
      ),
    );
  }
}