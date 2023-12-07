

import 'package:flutter/material.dart';

import '../../ulitis/string/stringtext.dart';
import '../../widgets/appbuttontask.dart';
import '../../widgets/backgroundtask.dart';
import '../../widgets/customtextfield.dart';
import '../../widgets/sizeboxresuable.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: BackGroundImage(widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: SingleChildScrollView(
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizeBoxResuable(height: 50),
                    Text("Join with us",style: bigTextStyle(),),
                    SizeBoxResuable(height: 20),
                    CustomTextField(
                        text: 'Email', controller: TextEditingController()),
                    SizeBoxResuable(height: 16),
                    CustomTextField(text: 'First Name', controller: TextEditingController()),
                    SizeBoxResuable(height: 16),

                    CustomTextField(text: 'Last Name', controller: TextEditingController()),
                    SizeBoxResuable(height: 16),
                    CustomTextField(text: 'Phone Number', controller: TextEditingController()),
                    SizeBoxResuable(height: 16),
                    CustomTextField(text: 'Password', controller: TextEditingController()),
                    SizeBoxResuable(height: 16),
                    AppButtonResuable(child: Icon(Icons.arrow_circle_right), ontab:(){}),
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
          ),
        ),
      )),
    );
  }
}