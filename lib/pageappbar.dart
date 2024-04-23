import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class pageAppbar extends StatelessWidget{
  const pageAppbar({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
          Navigator.pop(context);
          },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            decoration:  BoxDecoration (color: Colors.transparent,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(color: Colors.transparent, 
              blurRadius: 6),
            ]),
            child: Icon(Icons.arrow_back, color: Colors.white,),
        )
     ),
     Text('Scanning...', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
      InkWell(
      onTap: () {},
      child: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
       color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(color: Colors.transparent, 
          blurRadius: 6)
        ]
      ),
      child: const Icon(Icons.data_usage, color: Colors.white,
      size: 20,),
      ),
     )
     ],
    ),
  );



  }
}