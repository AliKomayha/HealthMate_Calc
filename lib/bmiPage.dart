import 'package:flutter/material.dart';
import 'home.dart';
import 'bmi.dart';
class bmiPage extends StatefulWidget {
  const bmiPage({super.key});

  @override
  State<bmiPage> createState() => _bmiPageState();
}

class _bmiPageState extends State<bmiPage> {

  double _weight=-1;
  double _height=-1;
  String _text="";
  Bmi _bmi = Bmi(0, 0);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI"),
        backgroundColor: Colors.green,
      ),

      body: Center( child: Column(
        children:[
            const Text("here is THE male page", style: TextStyle(fontSize: 30),),
            const SizedBox( height: 25.0,),
            MyTextField(f: updateWeight, hint: 'Enter Weight in Kg',),
            const SizedBox( height: 15.0,),
            MyTextField(f:updateHeight, hint:"Enter Height in M",),

          const SizedBox(height: 20.0,),
          ElevatedButton(onPressed: () {updateBmi();}, child: Text('Calculate', style: TextStyle(fontSize: 24.0),)),
          const SizedBox(height: 20.0,),
          Text('Body Mass Index: $_text', style: const TextStyle(fontSize: 18.0)),

         /// ////////////// add here the state of the result //////////////////////////////



          ],
      )),
    );
  }//build

  void updateWeight(String weight){
    if (weight.trim()==''){
      _weight=-1;
    }
    else
    {
      _weight=double.parse(weight);
    }
  }
  void updateHeight(String height){
    if (height.trim()==''){
      _height=-1;
    }
    else
    {
      _height=double.parse(height);
    }
  }
  void updateBmi(){
    _bmi = Bmi(_weight, _height);
    String bmiResult = _bmi.getTotalBMI();
    setState(() {
      _text = 'BMI = $bmiResult';
    });

  }
} // state


class MyTextField extends StatelessWidget{
  Function(String) f;
  String hint;

  MyTextField({required this.hint, required this.f, super.key,});

  @override
  Widget build(BuildContext context){
    return SizedBox(width: 300.0, height:50.0,
      child: TextField(
        style: const TextStyle(fontSize: 18.0),
        keyboardType: TextInputType.number,
        decoration:  InputDecoration(
            border: const OutlineInputBorder(),hintText: hint

        ),
        onChanged: (text){f(text);},
      ),
    );
  }
}

