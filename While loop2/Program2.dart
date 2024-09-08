import 'dart:io';
void main(){
  stdout.write("Enter number: ");
  int num=int.parse(stdin.readLineSync()!);
  int i=num;
  while(i>=1){
    if(num%2==0){
      stdout.write("$i ");
      i--;
    }else{
      stdout.write("$i ");
      i-=2;
    }
  
  }
}