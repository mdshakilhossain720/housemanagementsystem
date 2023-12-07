import 'package:flutter/material.dart';
import 'package:housemanagementsystem/viewscreen/pageview/page_screen_one.dart';
import 'package:housemanagementsystem/widgets/sizebox.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewHomeScreen extends StatefulWidget {
  const PageViewHomeScreen({super.key});

  @override
  State<PageViewHomeScreen> createState() => _PageViewHomeScreenState();
}

class _PageViewHomeScreenState extends State<PageViewHomeScreen> {
  PageController controllerpage=PageController();

  @override
  void dispose() {
    // TODO: implement dispose
    controllerpage.dispose();
    super.dispose();
  }
  //int current=0;
  @override
  Widget build(BuildContext context) {

  final   width= MediaQuery.of(context).size.width;
   final height= MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: height*.9,
            child: PageView(
              children: [
                PageOne(),
                Pagetwo(),
                Pagethree(),
              ],
            ),
          ),
          10.height,
          SmoothPageIndicator(
              controller: controllerpage,  // PageController
              count:  3,
              effect: JumpingDotEffect(
                activeDotColor: Colors.green,
                dotColor: Colors.deepOrange,
                dotHeight: 20,
                dotWidth: 20,
                spacing: 16,
                verticalOffset: 20,
              ),  // your preferred effect
              // onDotClicked: (index){
              //   setState(() {
              //     current=index;
              //   });
              // }
          ),
        ],
      ),

    );
  }
}
