class Bmi{

  double weight;
  double height;

  Bmi(this.weight, this.height);

  @override
  String toString() {
    // TODO: implement toString
    return 'BMI = $weight';

  }

  String getTotalBMI(){
    height/=100;
    return (weight/(height*height)).toStringAsFixed(2);
  }



}