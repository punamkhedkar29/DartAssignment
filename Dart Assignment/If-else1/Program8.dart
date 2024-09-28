void main(){
  int num1=9;
  if(num1%3==0 && num1%5==0){
    print("Number is divisible by both 3 and 5");
  }else if(num1%3==0){
    print("Number is divisible by 3");
  }else if(num1%5==0){
    print("Number is divisible by 5");
  }else{
    print("Number is not divisible by 3 or 5");
  }
}