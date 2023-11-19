import 'package:flutter/material.dart';

class femalePage extends StatelessWidget {
  const femalePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Female Page"),
      ),

      body: Center( child: Column(
        children:[

          const SizedBox(height: 25.0,),
          const Text("here is THE female page", style: TextStyle(fontSize: 30),)

        ],
      )),
    );
  }
}
