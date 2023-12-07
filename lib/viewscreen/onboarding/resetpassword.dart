import 'package:flutter/material.dart';

import '../../ulitis/string/stringtext.dart';
import '../../widgets/appbuttontask.dart';
import '../../widgets/backgroundtask.dart';
import '../../widgets/customtextfield.dart';
import '../../widgets/sizeboxresuable.dart';
import 'login_screen.dart';
class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundImage(widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          SizeBoxResuable(height: 20),
          Text("Enter the vaild Password",style: bigTextStyle(),),
          SizeBoxResuable(height:6),
          Text("A pin is email verify plz enter the pin code",style: smalltextStyle(),),
          SizeBoxResuable(height:20),
          CustomTextField(text: 'Password', controller: TextEditingController()),
          SizeBoxResuable(height:15),
          CustomTextField(text: 'confrim Password', controller: TextEditingController()),

          SizeBoxResuable(height:20),
          AppButtonResuable(child: Text(" Continue"),ontab: (){

          },),
          SizeBoxResuable(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dont have an account ?",),
              TextButton(onPressed: (){
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context)=>LoginPage()), (route) => false);

              }, child: Text("Sign Up",style: TextStyle(color: Colors.green),)),
            ],
          )






        ],
      ),
      ),
    );
  }
}