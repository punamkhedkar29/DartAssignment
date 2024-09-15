import 'dart:io';
void main(){
  stdout.write("Enter row: ");
  int row= int.parse(stdin.readLineSync()!);
  int num=10;
  for(int i=1; i<=row; i++){
    for(int j=1; j<=row; j++){
      stdout.write("$num ");
      if(num<100){
        num=num+10;
      }else{
        num=num+1;
      }
    }
    print("");
  }
}