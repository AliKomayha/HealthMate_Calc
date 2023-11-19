import 'package:flutter/material.dart';

class malePage extends StatelessWidget {
  const malePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Male Page"),
      ),

      body: Center( child: Column(
        children:[
            const Text("here is THE male page", style: TextStyle(fontSize: 30),)

          ],
      )),
    );
  }
}
