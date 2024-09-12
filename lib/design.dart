import 'package:assignment3_flutter/database.dart';
import 'package:flutter/material.dart';
class Foodexample extends StatelessWidget{

  @override
  Widget build (BuildContext context){
  return Scaffold(
    backgroundColor:Colors.black,
    appBar: AppBar(
      backgroundColor:Colors.black,
      leading: Icon(Icons.arrow_left,color: Colors.white,),
      title: Center(child: Text("Cuisines",
      style: TextStyle(fontSize: 20,color: Colors.white),),),
      actions: [
        Icon(Icons.more_vert_rounded,color: Colors.white,)
      ],
    ),
body: GridView.builder( itemCount:6,
gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2,crossAxisSpacing: 15,mainAxisSpacing: 15), 
itemBuilder: (context,index){
  
  return Padding(
    padding: const EdgeInsets.all(13.0),
    child: Container(
      color: Colors.black,
   child:  Column(children: [
      Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage(Database.MyList[index]["image"]),
            fit: BoxFit.cover)),
           ),
      SizedBox(height:2),
           Text(Database.MyList[index]["name"],style:TextStyle(color: Colors.white),),
      SizedBox(height: 2,),
           Text(Database.MyList[index]["place"],style: TextStyle(color: const Color.fromARGB(255, 87, 85, 85)),)
           
           
    
    ],),
    ),
  );

}),
  );
  }
}