void main(){
  int num1=9;
  if(num1<=5 && num1>0){
    if(num1==0){
      print("zero");
    }else if(num1==1){
      print("one");
    }else if(num1==2){
      print("two");
    }else if(num1==3){
      print("three");
    }else if(num1==4){
      print("four");
    }else if(num1==5){
      print("five");
    }
  }else if(num1>5){
    print("$num1 is greater than 5");
  }else{
    print("$num1 is less than 0");
  }
}