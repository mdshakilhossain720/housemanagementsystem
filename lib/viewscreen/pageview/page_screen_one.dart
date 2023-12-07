import 'package:flutter/material.dart';
import 'package:housemanagementsystem/style/style.dart';
import 'package:housemanagementsystem/ulitis/string/stringtext.dart';
import 'package:housemanagementsystem/widgets/sizebox.dart';

import '../../widgets/button_resuable.dart';
import '../all_apps_screen/home_screen_apps.dart';
class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            50.height,
            //SizedBox(height: 50,),
            Image(
                height: 250,
                image: AssetImage("assets/images/imagepageview.jpg")),
            20.height,
            Text(PageTwoText,style:  HeadText(),),
            40.height,

            ButtonReusable(title:'NEXT',color: Colors.green,onpress: (){},),

          ],
        ),
      ),


    );
  }
}
class Pagetwo extends StatelessWidget {
  const Pagetwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [
            50.height,
              //SizedBox(height: 50,),
            Image(
                height: 250,
                image: AssetImage("assets/images/imagethreepageview.jpg")),
            20.height,
            Text(PageTwoText,style:  HeadText(),),
            40.height,

            ButtonReusable(title:'NEXT',color: Colors.green,onpress: (){},),

          ],
        ),
      ),

    );
  }
}
class Pagethree extends StatelessWidget {
  const Pagethree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            50.height,
            //SizedBox(height: 50,),
            Image(
                height: 250,
                image: AssetImage("assets/images/detailsbari.jpg")),
            20.height,
            Text(PageTwoText,style:  HeadText(),),
            40.height,

            ButtonReusable(title:'NEXT',color: Colors.green,onpress: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreenApps()));
            },),

          ],
        ),
      ),


    );
  }
}