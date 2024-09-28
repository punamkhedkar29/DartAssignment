void main(){
  double weight= 26.6;
  if(weight<18.5){
    print("Underweight");
  }else if(weight>=18.5 && weight<=24.9){
    print("Normal");
  }else if(weight>=25.0 && weight<=29.9){
    print("Overweight");
  }else if(weight>=30.0 && weight<=34.9){
    print("Obese");
  }else if(weight>=35.0){
    print("Extreme Obese");
  }else{
    print("Invalid Input");
  }
}