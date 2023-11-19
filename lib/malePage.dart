import 'package:flutter/material.dart';

class malePage extends StatelessWidget {
  const malePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Male Page"),
      ),

      body: const Center( child: Column(
        children:[
            Text("here is THE male page", style: TextStyle(fontSize: 30),),
            SizedBox( height: 25.0,),
            SizedBox( width:300.0, height:50.0,
              child: TextField(
              style: TextStyle(fontSize: 18.0),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Wight in Kg",
              ),
            ),),
          SizedBox( height: 15.0,),
          SizedBox( width:300.0, height:50.0,
            child: TextField(
              style: TextStyle(fontSize: 18.0),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Height in Cm",
              ),
            ),),

          ],
      )),
    );
  }
}
