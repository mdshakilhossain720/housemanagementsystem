import 'package:flutter/material.dart';

import '../../ulitis/string/stringtext.dart';
import '../../widgets/appbuttontask.dart';
import '../../widgets/backgroundtask.dart';
import '../../widgets/customtextfield.dart';
import '../../widgets/sizeboxresuable.dart';
import 'otpverifaction.dart';
class EmailVerify extends StatelessWidget {
  const EmailVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundImage(widget: SafeArea(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizeBoxResuable(height: 20),
                Text("Enter your email Addres",style: bigTextStyle(),),
                SizeBoxResuable(height:6),
                Text("A pin is email verify plz enter the pin code",style: smalltextStyle(),),
                SizeBoxResuable(height:20),
                CustomTextField(text: "Email plz", controller: TextEditingController()),
                SizeBoxResuable(height:16),
                AppButtonResuable(child:Text('Email Verify') , ontab: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpVerifyScreen()));

                }),
                SizeBoxResuable(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have an account ?",),
                    TextButton(onPressed: (){
                      Navigator.pop(context);

                    }, child: Text("Sign Up",style: TextStyle(color: Colors.green),)),
                  ],
                )


              ],),
          ),
        ),
      )),

    );
  }
}