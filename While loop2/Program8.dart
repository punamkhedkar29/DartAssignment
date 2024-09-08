import 'dart:io';
void main(){
  int num=942111423;
  while(num>0){
    int num1=num%10;
    if(num1%2==0){
      stdout.write("${num1*num1} ");
    }
    num=num~/10;
  }
}