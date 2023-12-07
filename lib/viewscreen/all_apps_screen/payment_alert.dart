import 'package:flutter/material.dart';
import 'package:housemanagementsystem/viewscreen/all_apps_screen/paymentscreen/rent_due.dart';
import 'package:housemanagementsystem/viewscreen/all_apps_screen/paymentscreen/rent_paid.dart';
import 'package:housemanagementsystem/viewscreen/all_apps_screen/paymentscreen/service_chare_paid.dart';
import 'package:housemanagementsystem/viewscreen/all_apps_screen/paymentscreen/services_charge_due.dart';
import 'package:housemanagementsystem/viewscreen/all_apps_screen/paymentscreen/uitilybilpaid.dart';
import 'package:housemanagementsystem/viewscreen/all_apps_screen/paymentscreen/utity_bill_due.dart';
import 'package:housemanagementsystem/widgets/appbuttontask.dart';
class AlertPayment extends StatefulWidget {
  const AlertPayment({super.key});

  @override
  State<AlertPayment> createState() => _AlertPaymentState();
}

class _AlertPaymentState extends State<AlertPayment> {
  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alert!!"),
          content: Text("You are awesome!"),
          actions: [
            MaterialButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alert – Deadline for Payment"),

        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              // PopupMenuItem 1
              PopupMenuItem(
                value: 1,
                // row with 2 children
                child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Tenant")
                  ],
                ),
              ),
              // PopupMenuItem 2
              PopupMenuItem(
                value: 2,
                // row with two children
                child: Row(
                  children: [
                    Icon(Icons.chrome_reader_mode),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Flat Wise")
                  ],
                ),
              ),
              PopupMenuItem(
                value: 3,
                // row with two children
                child: Row(
                  children: [
                    Icon(Icons.chrome_reader_mode),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Teanat wise")
                  ],
                ),
              ),
              PopupMenuItem(
                value: 4,
                // row with two children
                child: Row(
                  children: [
                    Icon(Icons.chrome_reader_mode),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Building Wise"),
                  ],
                ),
              ),
            ],
            // offset: Offset(0, 100),
            // color: Colors.grey,
            // elevation: 2,
            // on selected we show the dialog box
            onSelected: (value) {
              // if value 1 show dialog
              if (value == 1) {
                _showDialog(context);
                // if value 2 show dialog
              } else if (value == 2) {
                _showDialog(context);
              }else if (value == 3) {
                _showDialog(context);
              }else if (value == 4) {
                _showDialog(context);
              }
            },
          ),
        ],
      ),





      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("Alert – Deadline for Payment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SizedBox(height: 20,),
            AppButtonResuable(child: Text("Rent Paid "), ontab: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RentPaid()));
            }),
            SizedBox(height: 20,),
            AppButtonResuable(child: Text("Rent Due "), ontab: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RentDue()));
            }),
            SizedBox(height: 20,),
            AppButtonResuable(child: Text("Service charge Paid "), ontab: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ServicesChargePaif()));
            }),
            SizedBox(height: 20,),
            AppButtonResuable(child: Text("Service charge Due "), ontab: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ServicesChargeDue()));
            }),
            SizedBox(height: 20,),
            AppButtonResuable(child: Text("Utility Bill Paid "), ontab: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>UitilyBillPaid()));
            }),
            SizedBox(height: 20,),
            AppButtonResuable(child: Text("Utility Bill Due  "), ontab: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>UitilyBillDue()));
            }),

          ],
        ),
      ),
    );
  }
}
