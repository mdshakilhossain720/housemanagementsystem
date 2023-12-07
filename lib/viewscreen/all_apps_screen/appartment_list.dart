import 'package:flutter/material.dart';

import '../../ulitis/navagitorpush/navagitorpush.dart';
import 'apartmentsingle.dart';



class AppartMentList extends StatelessWidget {
  const AppartMentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Apartments"),
      backgroundColor: Colors.green,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),

              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 3),

                      ),
                    ]
                ),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.search,color: Colors.red,),
                      Container(
                        height: 49,
                        width: 230,
                        child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'what would you like to have ?',
                              border: InputBorder.none,

                            ),
                          ),

                        ),
                      ),
                      Spacer(),
                      Icon(Icons.filter_list),
                    ],
                  ),


                ),
              ),
            ),


            ListView.builder(
              shrinkWrap: true,
                primary: false,
                itemCount:20,
               itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  onTap: (){
                    NavagitorPush(context,HomePage ());
                  },
                  title: Text('MD Shakil Hossain',style: TextStyle(fontSize: 13,color: Colors.black87),),
                  subtitle: Text("House 2, Road 3B, Gulsan 2 \n 01700968371",style: TextStyle(fontSize: 12,color: Colors.black87)),
                  trailing: Text("Unit: 3A"),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
