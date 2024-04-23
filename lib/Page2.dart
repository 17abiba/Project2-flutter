import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:project2/pageappbar.dart';

class pageTwo extends StatelessWidget {
  const pageTwo({super.key});
  @override
  Widget build(BuildContext context) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(image: AssetImage('assets/wallpaper.jpg'),
      fit: BoxFit.cover,
      opacity: 0.7,
      )
    ),

    child:Scaffold(
     backgroundColor: Colors.transparent,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: pageAppbar()
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
    Container(        
    height: 100,
    width: 300, 
    decoration: BoxDecoration(
    color: Colors.black54,
    borderRadius: BorderRadius.circular(10),
  ),
child: Row(    
    children: [
      Padding(
        padding: EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/city1.jpg',
            fit: BoxFit.cover,
            width: 100, 
            height: 100, 
          ),
        ),
      ),
      SizedBox(width: 20), 
      const Text(
        'Grand Place Hotel',
        style: TextStyle(color: Colors.white),
      ),
    ],
  ),
),
Container(
  height: 100,
  width: 300, 
  decoration: BoxDecoration(
    color: Colors.black54,
    borderRadius: BorderRadius.circular(10),
  ),
  child: Row(
    children: [
      Padding(
        padding: EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/city1.jpg',
            fit: BoxFit.cover,
            width: 100, 
            height: 100, 
          ),
        ),
      ),
      SizedBox(width: 20),
      const Text(
        'Royel Albert Hotel',
        style: TextStyle(color: Colors.white),
      ),
    ],
  ),
),
     Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(15),))
          ]
         ),
       )
    ),
  );
  }
}