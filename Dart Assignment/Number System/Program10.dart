import 'dart:io';
void main(){
  int sum=0;
  int num1=0;
  int num2=1;
  while(num1>=0){
    stdout.write("$num1, ");
    sum=num1+num2;
    num1=num2;
    num2=sum;
  }
}