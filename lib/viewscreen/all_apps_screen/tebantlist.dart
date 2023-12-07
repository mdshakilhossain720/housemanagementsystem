import 'package:flutter/material.dart';

import 'teantinformation.dart';
class TenantList extends StatelessWidget {
  const TenantList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tenants  Apartment"),
      backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),

                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3),

                        ),
                      ]
                  ),
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(Icons.search,color: Colors.red,),
                        Container(
                          height: 49,
                          width: 250,
                          child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'what would you like to have ?',
                                border: InputBorder.none,

                              ),
                            ),

                          ),
                        ),
                        Spacer(),
                        Icon(Icons.filter_list),
                      ],
                    ),


                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                  primary: false,
                  itemCount: 10,
                  itemBuilder: (context,index){
                return Card(
                  child: ListTile(
                    onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TeanrInformation ()));
                    },
                    title: Text("Tenant Name"),
                    subtitle: Text("Unit"),
                  ),
                );
              })
            ],
          ),
        ),
      ),

    );
  }
}
