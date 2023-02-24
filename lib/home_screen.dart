import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){

  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.amber,
      leading:Icon(
        Icons.menu,
      ),
          title: Text("Haidy"),
      actions:[
        Icon(Icons.notifications),
        Icon(Icons.search),
        IconButton(onPressed:(){
          print('notification is pressed');
        },
      icon:Icon(Icons.notifications),
        )
    ],
    ),
    body: Container(
      color: Colors.pink,
      width: double.infinity,
     // height: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment:MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
              child:
              Text('hello from Haidy',
                  style:TextStyle(
                    color: Colors.red,
                    fontSize: 30.0,
                    backgroundColor: Colors.brown,
                  ),

              ),
            ),

      ],
      ),
    ),
    );




  }
}
