import 'dart:io';
void main(){
  int i=1;
  while(i<=10){
    if(i==5){
      stdout.write("");
    }else{
      stdout.write("$i ");
    }
    i++;
  }
}