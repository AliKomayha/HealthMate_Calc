import 'package:flutter/material.dart';
import 'malePage.dart';

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
          const SizedBox(height: 25.0,),
          
          ElevatedButton(
              child: const Icon(Icons.man_2_rounded, size: 60),
              onPressed: (){

                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> const malePage(),
                  )

                );

              },
          )
        ],

      ),)
    );
  }
}