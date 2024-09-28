import 'dart:io';
void main(){
  stdout.write("Enter row: ");
  int row= int.parse(stdin.readLineSync()!);
  for(int i=1; i<=row; i++){
    int num=i;
    for(int j=1; j<=row; j++){
      if(j==(row-i+1)){
        stdout.write("$row ");
        num-=(row-1);
      }else{
      stdout.write("$num ");
      num++;
      }
    }
    print("");
  }
}