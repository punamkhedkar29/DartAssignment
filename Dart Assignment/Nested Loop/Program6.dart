import 'dart:io';
void main(){
  stdout.write("Enter row: ");
  int row= int.parse(stdin.readLineSync()!);
  int num=12;
  for(int i=1; i<=row; i++){
    for(int j=1; j<=row; j++){
      if(num==18){
        stdout.write("$num ");
        num+=2;
      }else if(num==20){
        stdout.write("$num ");
        num+=4;
      }else{
      stdout.write("$num ");
      num+=6;
      }
    }
    print("");
  }
}