import 'package:flutter/material.dart';
import 'package:housemanagementsystem/viewscreen/all_apps_screen/profilepage.dart';

import '../ulitis/navagitorpush/navagitorpush.dart';
import '../viewscreen/all_apps_screen/general_bill.dart';
import '../viewscreen/all_apps_screen/home_screen_apps.dart';
class Drawe extends StatelessWidget {
  const Drawe({super.key});

  @override
  Widget build(BuildContext context) {
    return
     ListView(
    children: [
    UserAccountsDrawerHeader(
    accountName: Text("AppMaking.co",style: TextStyle(fontSize: 20,color: Colors.black87),),
    accountEmail: Text("sundar@appmaking.co",style: TextStyle(fontSize: 15,color: Colors.black87)),
    currentAccountPicture: CircleAvatar(
    backgroundImage: AssetImage(
    "assets/image/logo.jpg"),
    ),
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage(
    "assets/image/background.webp",
    ),
    fit: BoxFit.fill,
    ),
    ),

    ),
    ListTile(
    leading: Icon(Icons.home),
    title: Text('Generate bill'),
    onTap: () {
       Navigator.push(context, MaterialPageRoute(builder: (context)=>GenerateBill()));
    },
    ),
    ListTile(
    leading: Icon(Icons.home),
    title: Text("Home"),
    onTap: () {
      NavagitorPush(context,HomeScreenApps());
    },
    ),
    ListTile(
    leading: Icon(Icons.stay_current_portrait_outlined),
    title: Text("Tenants"),
    onTap: () {


    },
    ),
    ListTile(

    leading: Icon(Icons.person),
    title: Text("My Profile"),
    onTap: () {
      NavagitorPush(context,UserProfile());
    },
    ),
    ListTile(
    leading: Icon(Icons.settings),
    title: Text("Settings"),
    onTap: () {},
    ),
    ListTile(
    leading: Icon(Icons.account_box),
    title: Text("About"),
    onTap: () {},
    ),

    ListTile(
    leading: Icon(Icons.call),
    title: Text("Contact"),
    onTap: () {},
    ),
    ListTile(
    leading: Icon(Icons.notification_important),
    title: Text("Notifactions"),
    onTap: () {},
    ),
    ListTile(
    leading: Icon(Icons.details),
    title: Text("Term & Condition"),
    onTap: () {},
    ),
    ListTile(
    leading: Icon(Icons.rate_review),
    title: Text("Logout"),
    onTap: () {

    },
    ),
    ListTile(
    leading: Icon(Icons.logout),
    title: Text("Payments"),
    onTap: () {

    },
    ),
    ],
    );

  }
}
