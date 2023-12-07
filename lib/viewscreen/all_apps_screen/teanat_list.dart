import 'package:flutter/material.dart';

import '../../style/style.dart';
class TeanatList extends StatelessWidget {
  const TeanatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tenant List'),
        backgroundColor: Colors.green,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_back),),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                //  Text('Room/ Flat name',style: TextStyle(fontSize: 18,color: Colors.black87),),
                //SizedBox(height: 10,),
                TextFormField(
                  decoration: AppInputDecoration("Name"),
                ),
                SizedBox(height: 15,),



                TextFormField(
                  decoration: AppInputDecoration("Phone"),
                ),
                SizedBox(height: 15,),

                TextFormField(
                  decoration: AppInputDecoration("NID Number"),
                ),

                SizedBox(height: 10,),
                TextFormField(
                  decoration: AppInputDecoration("DOB"),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: AppInputDecoration("Starting Month"),
                ),

                SizedBox(height: 50,),
                ElevatedButton(onPressed: (){

                },style: appButtonstyle(), child: successButton('Save')),
                SizedBox(height: 30,),




              ],
            ),
          ),
        ),
      ),
    );
  }
}
