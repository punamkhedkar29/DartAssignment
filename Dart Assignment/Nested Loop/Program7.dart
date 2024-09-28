import 'dart:io';
void main(){
  stdout.write("Enter row: ");
  int row= int.parse(stdin.readLineSync()!);
  int num=0;
  int count=0;
  for(int i=1; i<=row; i++){
    for(int j=1; j<=row; j++){
      stdout.write("$num ");
      count+=2;
      num+=count;
    }
    print("");
  }
}