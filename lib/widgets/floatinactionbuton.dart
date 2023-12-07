import 'package:flutter/material.dart';
class floatingactionbutton extends StatelessWidget {
  const floatingactionbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(height: 8,),
        FloatingActionButton(
          heroTag: null,
          onPressed: (){},child: Icon(Icons.add),),
        SizedBox(height: 8,),
        FloatingActionButton(   heroTag: null,onPressed: (){},child: Icon(Icons.email),),
        SizedBox(height: 8,),
        FloatingActionButton(   heroTag: null,onPressed: (){},child: Icon(Icons.add_a_photo),),
        SizedBox(height: 8,),
        FloatingActionButton(   heroTag: null,onPressed: (){},child: Icon(Icons.account_circle),),
        SizedBox(height: 8,),

      ],
    );
  }
}