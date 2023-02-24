import 'package:flutter/material.dart';
class app2 extends StatelessWidget {
  const app2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
          children: [
            SizedBox(height: 20,),
            Text("Widget of the week"),
            Container(
              decoration: BoxDecoration(
                color:Colors.blue,
                borderRadius:
                  BorderRadius.circular(9),
              ),

              child: Column(

                children: [
                  SizedBox(height: 30,),
                  Text("Container",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  SizedBox(height:20,),
                  Text("cjkll,nvffffchjkkmnbvbnm,mnbgfdcfvgbn",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                ],
              )
              ,
            ),
            SizedBox(height: 50,),
            Text("Widget of the week"),
            Container(
              decoration: BoxDecoration(
                color:Colors.deepOrange,
                borderRadius:
                BorderRadius.circular(9),
              ),

              child: Column(

                children: [
                  SizedBox(height: 30,),
                  Text("Container",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  SizedBox(height:20,),
                  Text("cjkll,nvffffchjkkmnbvbnm,mnbgfdcfvgbn",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                ],
              )
              ,
            ),
          ],
        )
    );


  }
}
