import 'package:flutter/material.dart';
import 'package:housemanagementsystem/widgets/text.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int curentpage=0;
  final PageController pageController=PageController();

  List<String> image=[
    "assets/images/imagepageview.jpg",
    "assets/images/imagethreepageview.jpg",
    "assets/images/profileimage.jpg",
    "assets/images/detailsbari.jpg",
    //"assets/image/istockphoto-1368264124-1024x1024.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ApartMent View"),
      backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 250,
              child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (index){
                    setState(() {
                      curentpage=index%image.length;
                    });
                  },
                  itemCount: 4,
                  itemBuilder: (context,index){
                    return SizedBox(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(image[index % image.length],fit: BoxFit.cover,),
                    );
                  }),


            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(var i=0;i<image.length;i++)buildindicator(curentpage==i)
              ],
            ),
            SizedBox(height: 20,),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     IconButton(onPressed: (){
            //       pageController.jumpToPage(curentpage -1);
            //     }, icon: Icon(Icons.arrow_back)),
            //     IconButton(onPressed: (){
            //       pageController.jumpToPage(curentpage+1);
            //     }, icon: Icon(Icons.arrow_forward)),
            //   ],
            // )

           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               text(title: 'Name   :'),
               SizedBox(width:40,),
               text(title:'Gulasn dhaka'),
               SizedBox(height: 10,),


             ],
           ),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                text(title: 'UNIT    :'),
                SizedBox(width:40,),
                text(title:'4'),
                SizedBox(height: 10,),


              ],
            ),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                text(title: 'Deatils :'),
                SizedBox(width:35,),
                text(title:' Bed, Kitchen, Belcony'),
                SizedBox(height: 10,),


              ],
            ),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                text(title: 'Price   :'),
                SizedBox(width:35,),
                text(title:'5000'),
                SizedBox(height: 10,),


              ],
            ),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                text(title: 'Price   :'),
                SizedBox(width:35,),
                text(title:'5000'),
                SizedBox(height: 10,),


              ],
            ),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                text(title: 'Price   :'),
                SizedBox(width:35,),
                text(title:'5000'),
                SizedBox(height: 10,),


              ],
            ),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                text(title: 'Price   :'),
                SizedBox(width:35,),
                text(title:'5000'),
                SizedBox(height: 10,),


              ],
            ),






          ],
        ),
      ),


    );
  }
  Widget buildindicator(bool isselcetable){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: isselcetable?12:8,
        width: isselcetable?12:8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isselcetable? Colors.black87:Colors.green,
        ),

      ),
    );
  }

}