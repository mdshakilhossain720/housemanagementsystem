import 'package:flutter/material.dart';
class ServicesChargePaif extends StatelessWidget {
  const ServicesChargePaif({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(

          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name ",style: TextStyle(fontSize: 22,fontWeight:FontWeight.bold,color: Colors.black87),),
                            SizedBox(height: 4,),

                            Text(" Unit ",style: TextStyle(fontSize: 17,color: Colors.black87),),
                            SizedBox(height: 4,),
                            Text("Apartments Address",style: TextStyle(fontSize: 17,color: Colors.black87),),

                            SizedBox(height: 4,),
                            Text("Last paid rent ",style: TextStyle(fontSize: 17,color: Colors.black87),),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
