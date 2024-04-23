import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Padding(
      
      padding: const EdgeInsets.all(25),
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

         Container(
          width: 150,
          height: 50,
          decoration: 
          BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blue.shade100),
          child: const Row(
          children:[
          Padding(padding: EdgeInsets.only(left: 10.0)),
          Icon(Icons.location_on, color: Colors.blue),
          Text('Chicago, USA',style: TextStyle(fontSize: 16))])),
          Row(
            children: [
               Padding(
                   padding: const EdgeInsets.only(right: 8.0),
        child: ClipOval( 
        child: Image.asset('assets/girl.jpg', width: 40.0, height: 40.0, ),),)
            ],
          ),
      ],),
    );
  }
}