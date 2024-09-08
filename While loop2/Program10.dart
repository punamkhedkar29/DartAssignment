import 'dart:io';
void main(){
  int num=int.parse(stdin.readLineSync()!);
  int temp=num;
  int temp1=0;
  while(temp>0){
    int num1=temp%10;
    temp1=temp1*10+num1;
    temp=temp~/10;
  }
  if(temp1==num){
    print("$num is a palindrome number");
  }else{
    print("$num is not a palindrome number");
  }
}