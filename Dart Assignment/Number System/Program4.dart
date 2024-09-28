import 'dart:io';
import'dart:math';
void main(){
  stdout.write("Enter number: ");
  int num=int.parse(stdin.readLineSync()!);
  int sum=0;
  int count=0;
  int temp=num;
  int temp2=num;
  while(temp2>0){
    int rem=temp2%10;
    count++;
    temp2=temp2~/10;
  }
  while(num>0){
    int rem=num%10;
    sum+=pow(rem,count).toInt();
    num=num~/10;
  }
  if(temp==sum){
    print("$temp is a Armstrong number");
  }else{
    print("$temp is not a Armstrong number");
  }
}