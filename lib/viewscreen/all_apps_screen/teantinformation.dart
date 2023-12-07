import 'package:flutter/material.dart';
class TeanrInformation extends StatelessWidget {
  const TeanrInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tenant apartment details'),
      backgroundColor: Colors.green,),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  CircleAvatar(
                    radius: 90,
                    backgroundColor: Colors.green,
                    backgroundImage: AssetImage('assets/images/profileimage.jpg'),
                  ),
                  SizedBox(height: 20,),

                  ListTile(
                    title: Text('Tenant Name'),

                  ),
                  SizedBox(height: 15,),



                  ListTile(
                    title: Text('NID NUmber'),
                  ),
                  SizedBox(height: 15,),
                  ListTile(
                    title: Text('Phone'),

                  ),
                  SizedBox(height: 15,),
                  ListTile(
                    title: Text('Address'),

                  ),
                  SizedBox(height: 15,),
                  ListTile(
                    title: Text('DOB'),
                  ),
                  SizedBox(height: 15,),
                  ListTile(
                    title: Text('Start Month'),
                  ),
                  SizedBox(height: 15,),
                  ListTile(
                    title: Text('Family Type'),
                  ),
                  SizedBox(height: 15,),





                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
