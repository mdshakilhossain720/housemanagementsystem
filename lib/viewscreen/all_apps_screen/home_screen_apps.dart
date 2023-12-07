import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:housemanagementsystem/style/style.dart';

import '../../ulitis/navagitorpush/navagitorpush.dart';
import '../../widgets/cardwidget.dart';
import '../../widgets/drawer.dart';
import '../../widgets/floatinactionbuton.dart';
import 'appartment_list.dart';

import 'payment_alert.dart';
import 'profilepage.dart';
import 'tebantlist.dart';
import 'utilitybil.dart';

class HomeScreenApps extends StatefulWidget {
  const HomeScreenApps({super.key});

  @override
  State<HomeScreenApps> createState() => _HomeScreenAppsState();
}

class _HomeScreenAppsState extends State<HomeScreenApps> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(4),
        // ),
        onPressed: (){},mini:true,child: Icon(Icons.add,size: 20,),),
     // floatingActionButton: floatingactionbutton(),
      appBar: AppBar(title:Text("House Management") ,
      centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>UserProfile()));
          }, icon: Icon(Icons.person)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notification_important)),
        ],
      ),
      drawer: Drawer(
        child: Drawe(),
      ),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           // SizedBox(height: 30,),

            Text("Welcome, shakil!",style: TextStyle(fontSize: 24,color: Colors.black),),
            SizedBox(height: 2,),
            Text("02/12/2023",style: TextStyle(fontSize: 15,color: Colors.grey),),
            SizedBox(height: 2,),
            Text("My Dashboard",style: TextStyle(fontSize: 18),),

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     alignment: Alignment.centerLeft,
            //       child: ),
            // ),

            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: cardwidget(due: '20000', payment: '15000', text: 'Payment\n10',)),
                Expanded(child: cardwidget(due: '15000', payment: '12000', text: 'Tenant\n10',)),
                Expanded(child: cardwidget(due: '11000', payment: '5500', text: 'Utility\n10',)),


              ],

            ),
            SizedBox(height: 15,),



            // CarouselSlider(
            //     items: [
            //      Image(image: AssetImage( "assets/images/detailsbari.jpg",)),
            //       Image(image: AssetImage( "assets/images/imageone.webp",)),
            //       Image(image: AssetImage( "assets/images/imagethree.jpg",)),
            //       Image(image: AssetImage( "assets/images/imagetwo.jpg",)),
            //       Image(image: AssetImage( "assets/images/detailsbari.jpg",)),
            //       Image(image: AssetImage( "assets/images/detailsbari.jpg",)),
            //
            //     ],
            //     options: CarouselOptions(
            //       height: 180,
            //       aspectRatio: 16/9,
            //       viewportFraction: 0.8,
            //       initialPage: 0,
            //       enableInfiniteScroll: true,
            //       reverse: false,
            //       autoPlay: true,
            //       autoPlayInterval: Duration(seconds: 3),
            //       autoPlayAnimationDuration: Duration(milliseconds: 800),
            //       autoPlayCurve: Curves.fastOutSlowIn,
            //       enlargeCenterPage: true,
            //       enlargeFactor: 0.3,
            //       //onPageChanged: callbackFunction,
            //       scrollDirection: Axis.horizontal,
            //     )
            // ),

            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(7),
                crossAxisCount: 2,

              mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children: [
                  InkWell(
                    onTap: (){
                      NavagitorPush(context,AppartMentList());
                    },
                    child: Card(

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                     child: Container(
                       decoration: BoxDecoration(
                         gradient:
                         LinearGradient(colors: [Color(0xffe6f2ff), Color(0xffe6f2ff)]),
                       ),
                       child: Center(child: FittedBox(child: Text('My Apartments',style: HeadText(),))),
                     ),


                    ),
                  ),

                  InkWell(
                    onTap: (){
                      NavagitorPush(context, TenantList());
                    },
                    child: Card(
                         shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),),
                     child: Container(
                       decoration: BoxDecoration(
                         gradient:
                         LinearGradient(colors: [Color(0xffe6f2ff), Color(0xffe6f2ff)]),
                       ),
                       child: Center(child: FittedBox(child: Text('Tenant List',style: HeadText(),))),
                     ),


                    ),
                  ),

                  InkWell(
                    onTap: (){
                      NavagitorPush(context,UitiltBill());

                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient:
                          LinearGradient(colors: [Color(0xffe6f2ff), Color(0xffe6f2ff)]),
                        ),
                        child: Center(child: Text('Utility Bill',style: HeadText(),)),
                      ),
                      //margin: EdgeInsets.all(10),


                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AlertPayment()));
                    },
                    child: Card(

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),),
                     child: Container(
                       decoration: BoxDecoration(
                         gradient:
                         LinearGradient(colors: [Color(0xffe6f2ff), Color(0xffe6f2ff)]),
                       ),
                       child: Center(child: FittedBox(child: Text('Payment List',style: HeadText(),))),
                     ),
                     // margin: EdgeInsets.all(10),
                     // color: Colors.white,

                    ),
                  ),
                  InkWell(
                    onTap: (){
                     // Navigator.push(context, MaterialPageRoute(builder: (context)=>AlertPayment()));
                    },
                    child: Card(

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient:
                          LinearGradient(colors: [Color(0xffe6f2ff), Color(0xffe6f2ff)]),
                        ),
                        child: Center(child: FittedBox(child: Text('Services Charges',style: HeadText(),))),
                      ),
                      // margin: EdgeInsets.all(10),
                      // color: Colors.white,

                    ),
                  ),
                ],

              ),
            ),





          ],
        ),
      ),



    );
  }
}




