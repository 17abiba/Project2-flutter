import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:project2/homeappbar.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: HomeAppBar()),

        body: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //text
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 200.0,
                      height: 80.0,
                      child:  const Text('Welcom to USA, Georgina.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
                    ),
                  ),
                  //searchbar
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Search Places....",
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)
                    )
                    ),
                  ),
                  //text2
                  const SizedBox(height: 15),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 200.0,
                      height: 40.0,
                      child: const Text('Favorite Places.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
                    ),
                  ),
                  //scroll
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              height: 300.0,
                              width: 330.0,
                              child: ListView.builder(
                                itemCount: 3,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                     onTap: (){},
                                     child: Row(
                                      children: [
                                        Container(
                                          height: 300.0,
                                          width: 180.0,
                                          padding: const EdgeInsets.all(10),
                                          margin: const EdgeInsets.only(left: 10),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image: AssetImage('assets/city${index+1}.jpg'),
                                              fit: BoxFit.cover,
                                              )
                                      ),
                                      child:Column(
                                        children: [
                                          Container(
                                            alignment: Alignment.topRight,
                                            child: const Icon(Icons.nature_people, color: Colors.black54,),
                                          ),
                                          const SizedBox(height: 150),
                                          Container(
                                            width: 150,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              color: Colors.white70,
                                              borderRadius: BorderRadius.circular(10)
                                             ),
                                            child: Column(
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(left:10, top: 15),
                                                  alignment: Alignment.topLeft,
                                                  child: const Text('Lincoln Park.',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(left: 5, top: 5),
                                                  alignment: Alignment.topLeft,
                                                  child: const Row(
                                                    children: [
                                                      Icon(Icons.location_on, color: Colors.grey, size: 15),
                                                      Text('34 west 57th street...',style: TextStyle(fontSize: 12))
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(left: 10, top: 5),
                                                  alignment: Alignment.topLeft,
                                                  child: Row(
                                                    children: [
                                                      const Text('9.8 mi',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                                      const SizedBox(width: 30),
                                                      Container(
                                                        padding: const EdgeInsets.all(5),
                                                        height: 30,
                                                        width: 70,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white70,
                                                          borderRadius: BorderRadius.circular(5),
                                                        ),
                                                        child: const Text("Details", style:  TextStyle(fontSize: 12, color: Colors.blue),
                                                         textAlign: TextAlign.center
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                     ),
                                      ],
                                     )
                                  );
                                }
                                ),
                              ),
                          ],

                        )
                      )
                    ],
                  ),
                   const SizedBox(height: 15),
                //text3
                Align(
                  alignment: Alignment.topLeft,
                    child: Container(
                      width: 200.0,
                      height: 40.0,
                      child:  const Text('Nearest Places.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
                    ),
                ),
                Column(
                  children: [
                    Container(
                      height: 130,
                      width: 400,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index){
                          return InkWell(
                            onTap: (){},
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  width: 400,
                                  padding: const EdgeInsets.all(20),
                                  margin: const EdgeInsets.symmetric(vertical: 5),
                                  decoration:BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(10),
                                   ),
                                   child: Row(
                                    children: [
                                      Container(
                                        width: 90,
                                        height: 100,
                                         decoration: BoxDecoration(
                                              color: Colors.white70,
                                              borderRadius: BorderRadius.circular(10),
                                              image: DecorationImage(
                                               image: AssetImage('assets/city${index+1}.jpg'),
                                               fit: BoxFit.cover,
                                               )
                                             ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        margin: const EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: const Row(
                                                children: [
                                                 Icon(Icons.bed, color: Colors.black, size: 15),
                                                 Text('Royal Albert Hotel.',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic))
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            Container(
                                              child: const Text('231 East 95th street, HK',style: TextStyle(fontSize: 12)),
                                            )
                                          ],
                                        ),

                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                             alignment: Alignment.topRight,
                                             child: const Text('28 mi',style: TextStyle(fontSize: 12)),
                                            ),
                                            const SizedBox(height: 30),
                                            Container(
                                              width: 35,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                color: Colors.blue.shade100,
                                                borderRadius: BorderRadius.circular(5),
                                                ),
                                              child: const Icon(Icons.arrow_forward, size: 15)
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                   ),
                                )
                              ],
                            ),
                          );
                        },
                        ),
                    )
                  ],
                ),
                ]
              ),
            ),
            ),
        )
    );
  }
}