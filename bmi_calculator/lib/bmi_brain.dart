import 'dart:math';


// ignore: camel_case_types
class Bmi_brain {

Bmi_brain({required this.height,required this.weight});
int height;
int weight;
 
double _bmicalculations(){
  double _bmi = weight/pow(height/100, 2);
  return _bmi;
}


String bmiresult(){
return _bmicalculations().toStringAsFixed(1);


}

String resultText(){
  if(_bmicalculations()>= 25){
    return'Overweight';

  }
  else if (_bmicalculations() >18.5){
    return 'normal';
  }
  else{
    return 'underweight';
  }
}

String ouropinion(){
  if(_bmicalculations() > 25){
    return'you should follow a perfect diet. your weight is over';

  }
  else if (_bmicalculations()>18.5){
    return 'normal. Good job!';
  }
  else{
    return 'You should eat more for you survival';
  }
}

}
