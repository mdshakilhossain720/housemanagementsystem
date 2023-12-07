import 'package:flutter/material.dart';

import '../../style/style.dart';
class UitiltBill extends StatelessWidget {
  const UitiltBill({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Utility Bill'),
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
                  decoration: AppInputDecoration("Service charge Month"),
                ),
                SizedBox(height: 15,),



                TextFormField(
                  decoration: AppInputDecoration("Electricty Bill"),
                ),
                SizedBox(height: 15,),

                TextFormField(
                  decoration: AppInputDecoration("Gas Bill"),
                ),

                SizedBox(height: 10,),
                TextFormField(
                  decoration: AppInputDecoration("Others"),
                ),
                // SizedBox(height: 10,),
                // TextFormField(
                //   decoration: AppInputDecoration("Starting Month"),
                // ),

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