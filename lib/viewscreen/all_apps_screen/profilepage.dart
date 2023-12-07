



import 'package:flutter/material.dart';
class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Land owner profile'),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
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
                  Text('MD Shakil Hossain',style: TextStyle(fontSize: 20,color: Colors.black87),),
                  SizedBox(height: 5,),
                  Text('mdshakilhossain720@gmail.com',style: TextStyle(fontSize: 14,color: Colors.black87),),
                  SizedBox(height: 25,),
                  ListTile(
                    title: Text('Edit option'),
                    leading: Icon(Icons.edit),
                  ),
                  SizedBox(height: 15,),

                  ListTile(
                    title: Text('Account Info'),
                    leading: Icon(Icons.verified_user),
                  ),
                  SizedBox(height: 15,),
                  ListTile(
                    title: Text('Informations'),
                    leading: Icon(Icons.medical_information_rounded),
                  ),
                  SizedBox(height: 15,),
                  ListTile(
                    title: Text('Phone'),
                    leading: Icon(Icons.call),
                  ),
                  SizedBox(height: 15,),
                  ListTile(
                    title: Text('Address'),
                    leading: Icon(Icons.location_on),
                  ),
                  SizedBox(height: 15,),
                  ListTile(
                    title: Text('DOB'),
                    leading: Icon(Icons.door_back_door),
                  ),
                  SizedBox(height: 15,),
                  ListTile(
                    title: Text('Update Profile'),
                    leading: Icon(Icons.person),
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

