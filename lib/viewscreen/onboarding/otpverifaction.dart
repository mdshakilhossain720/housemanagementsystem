import 'package:flutter/material.dart';
import 'package:housemanagementsystem/viewscreen/onboarding/resetpassword.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../ulitis/string/stringtext.dart';
import '../../widgets/appbuttontask.dart';
import '../../widgets/backgroundtask.dart';
import '../../widgets/sizeboxresuable.dart';
import 'login_screen.dart';
class OtpVerifyScreen extends StatelessWidget {
  const OtpVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: BackGroundImage(widget: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizeBoxResuable(height: 20),
            Text("Enter your email Addres",style: bigTextStyle(),),
            SizeBoxResuable(height:6),
            Text("A pin is email verify plz enter the pin code",style: smalltextStyle(),),
            SizeBoxResuable(height:20),
            pincode(),
            SizeBoxResuable(height:20),
            AppButtonResuable(child: Text(" Otp Verify"),ontab: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPassword()));

            },),
            SizeBoxResuable(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dont have an account ?",),
                TextButton(onPressed: (){
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context)=>LoginPage()), (route) => false);

                }, child: Text("Login",style: TextStyle(color: Colors.green),)),
              ],
            )






          ],
        ),
      ),
      ),
    );
  }
}

class pincode extends StatelessWidget {
  const pincode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 35,
        fieldWidth: 35,
        activeFillColor: Colors.white,
      ),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: Colors.white,
      enableActiveFill: true,

      onCompleted: (v) {
        print("Completed");
      },
      onChanged: (value) {
        print(value);

      }, appContext: context,);
  }
}
