import 'package:flutter/material.dart';

import '../../style/style.dart';


class GenerateBill extends StatefulWidget {
  const GenerateBill({super.key});

  @override
  State<GenerateBill> createState() => _GenerateBillState();
}

class _GenerateBillState extends State<GenerateBill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Generate Bill'),
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
                  decoration: AppInputDecoration("Room/ Flat name"),
                ),
                SizedBox(height: 15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: AppInputDecoration("Tenant name"),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextFormField(
                        decoration: AppInputDecoration("Tenant mobile no"),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: AppInputDecoration("Room rent amount"),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: AppInputDecoration("Gas bill "),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextFormField(
                        decoration: AppInputDecoration("Water bill"),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: AppInputDecoration("Service charge"),
                ),

                SizedBox(height: 10,),
                TextFormField(
                  decoration: AppInputDecoration("Electricity bill"),
                ),

                SizedBox(height: 50,),
                ElevatedButton(onPressed: (){

                },style: appButtonstyle(), child: successButton('Generate Bill')),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: (){

                },style: appButtonstyle(), child: successButton('Generate Pdf')),



              ],
            ),
          ),
        ),
      ),
    );
  }
}