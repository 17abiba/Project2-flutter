import 'package:flutter/material.dart';
import 'package:project2/Page2.dart';
import 'package:project2/homeappbar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor: Colors.blue.shade50, 
appBar: PreferredSize(
  preferredSize: const Size.fromHeight(90.0),
  child: HomeAppBar(),
),

body:
SafeArea(
  child: Padding (
    padding: const EdgeInsets.symmetric(vertical: 30),
    child: SingleChildScrollView(
      child: Column(children: [
Align(
      alignment: Alignment.topLeft,
      child: Container(
       margin: const EdgeInsets.only(left: 10),
       width: 200.0,
       height: 80.0,
       child: const Text('Welcom to USA, Georgina.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
  ),
),

   Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: TextField(
     decoration: InputDecoration(
      border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.black), 
      borderRadius: BorderRadius.circular(20)),
     focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.black), 
      borderRadius: BorderRadius.circular(20)),
     ),
    ),
   ),

    const SizedBox(height: 10),
       Align(
      alignment: Alignment.topLeft,
      child: Container(
       margin: const EdgeInsets.only(left: 10),
       width: 200.0,
       height: 50.0,
       child: const Text('Favorite Places',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
  ),
),
Row(
  children: [
     Expanded(child: Container(
        height: 200,
        child:  ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index ){
           return InkWell(
        onTap: (){},
        child: Container(
          width: 160,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage (
             
              image: AssetImage('assets/city${index+1}.jpg'),
            fit: BoxFit.cover,

            )
          ),
          child: Column(children: [
            Container(
              alignment: Alignment.bottomLeft,
              child:Icon(Icons.nature_people, color: Colors.black26,),),
              Spacer(),
              Container(
                alignment: Alignment.centerLeft,
                child: Text('Name' ,style: TextStyle(color: Colors.white, fontSize: 20), ),
              )
            
            ],),
        )
        );
          }
        
        ),
        
        )
        )
  ],
),
Padding(padding: EdgeInsets.only(top: 10),
  child: Row(
    children: [ 
       Align(
      alignment: Alignment.topLeft,
      child: Container(
       margin: const EdgeInsets.only(left: 10),
       width: 200.0,
       height: 50.0,
       child: const Text('Nearest Places',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
  ),
),
    ],

  ),),

ListView.builder
(physics: NeverScrollableScrollPhysics(),
itemCount: 3,
shrinkWrap: true,
  itemBuilder: (BuildContext context , int index){
  return Padding(padding: EdgeInsets.all(15),
  child:Column(
  children:[
   InkWell(
    onTap: () {
    },
    child: Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage('assets/city${index+1}.jpg'),
          fit: BoxFit.cover
        ),
      ),
          child:  Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => pageTwo()),
                      );
                      },
                      child: const Icon(
                        Icons.document_scanner,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
  ),
   ) ))]
  ),
  );
}
)

      ],
      ),
      ),
      ),
      
    ) ,
);
  }
}