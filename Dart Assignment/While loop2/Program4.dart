import 'dart:io';
void main(){
  int i=20;
  while(i<=30){
    if(i%7==0){
      stdout.write("$i ");
    }
    i++;
  }
}