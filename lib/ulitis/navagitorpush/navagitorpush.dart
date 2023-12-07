

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void NavagitorPush(BuildContext context,Widget widget){
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return widget;
  }));
}