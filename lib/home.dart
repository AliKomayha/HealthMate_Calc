import 'dart:ui';

import 'package:flutter/material.dart';
import 'malePage.dart';
import 'femalePage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: Center(child: Column(

        children: [
          const SizedBox(height: 150.0,),

          /// male page button
          ElevatedButton(

              child:  Container(
                   // width: 120,
                  // height: 120,

                // decoration: BoxDecoration(
                //   color: Colors.lightBlueAccent,
                //   //borderRadius: BorderRadius.circular(10),
                //   ),

                child: Icon(Icons.man_2_rounded, size: 100, color: Colors.white,),
              ),

              onPressed: (){

                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> const malePage(),
                  )
                );
              },
          ),
          const SizedBox(height: 10.0,),
          const Text("Male ", style: TextStyle(fontSize: 25.0,color: Colors.blue)),
          const SizedBox(height: 150.0,),


        /// female page button
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => femalePage()),
            );
          },
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.woman_2_rounded, size: 100, color: Colors.white),
          ),

        ),
          const SizedBox(height: 10.0,),
          const Text("Female ", style: TextStyle(fontSize: 25.0,color: Colors.pink)),
        ],

      ),)
    );
  }
}