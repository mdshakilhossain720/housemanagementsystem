
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/backgroundtask.dart';
import 'login_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    LoginPage(),
            )
        )
    );
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final Size screenSize=MediaQuery.of(context).size;
    return Scaffold(

      body: BackGroundImage(widget:  Center(child: SvgPicture.asset("assets/images/splashscreenlogo.svg",fit: BoxFit.scaleDown,width: 180,),),),

    );
  }
}

