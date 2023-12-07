import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class BackGroundImage extends StatelessWidget {
  final Widget widget;
  const BackGroundImage({required this.widget,super.key});

  @override
  Widget build(BuildContext context) {
    //final Size screenSize=MediaQuery.of(context).size;
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset("assets/images/background.svg",height: height,width:width,),
          widget,

        ],
      ),

    );
  }
}
