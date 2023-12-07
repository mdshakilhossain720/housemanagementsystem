import 'package:flutter/material.dart';
import '../../ulitis/string/stringtext.dart';
import '../../widgets/appbuttontask.dart';
import '../../widgets/backgroundtask.dart';
import '../../widgets/customtextfield.dart';
import '../../widgets/sizeboxresuable.dart';
import '../all_apps_screen/home_screen_apps.dart';
import 'emailverify.dart';
import 'singup_screen.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: BackGroundImage(widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SafeArea(
              child: Column(
                children: [
                  SizeBoxResuable(height: 50),
                  Text("Get Started With",style: bigTextStyle(),),
                  SizeBoxResuable(height: 20),
                  CustomTextField(controller: TextEditingController(),text: 'Email'),
                  SizeBoxResuable(height: 16),
                  CustomTextField(
                      obsceure: true,
                      text: 'Password', controller: TextEditingController()),
                  SizeBoxResuable(height: 20),

                  AppButtonResuable(child: Icon(Icons.arrow_circle_right),
                    ontab: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomeScreenApps()), (route) => false);
                    },

                  ),
                  SizeBoxResuable(height: 12),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailVerify()));

                  }, child: Text("Forget Password",style: TextStyle(color: Colors.grey),)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont have an account ?",),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));

                      }, child: Text("Sign Up",style: TextStyle(color: Colors.green),)),
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
