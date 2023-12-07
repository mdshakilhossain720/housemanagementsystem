
import 'package:flutter/cupertino.dart';

extension Padding on num{
  SizedBox get height=>SizedBox(height:toDouble(),);
  SizedBox get widget=>SizedBox(width: toDouble(),);
}